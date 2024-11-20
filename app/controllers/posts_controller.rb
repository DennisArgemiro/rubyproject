class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show; 
  
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, notice: 'Post criado com sucesso!' # Redireciona para o index
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: 'Post atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post excluído com sucesso!'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_user!
    redirect_to posts_path, alert: 'Acesso negado!' unless @post.user == current_user
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
