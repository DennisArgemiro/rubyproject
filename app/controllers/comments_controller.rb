class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:delete_comment]

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to posts_path, notice: 'Comentário adicionado com sucesso!'
    else
      redirect_to posts_path, alert: 'Não foi possível adicionar o comentário.'
    end
  end

  # Usando uma nova ação `delete_comment` para deletar um comentário
  def delete_comment
    if @comment.user == current_user || @post.user == current_user
      @comment.destroy
      redirect_to posts_path, notice: 'Comentário excluído com sucesso!'
    else
      redirect_to posts_path, alert: 'Você não tem permissão para excluir este comentário.'
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = @post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
