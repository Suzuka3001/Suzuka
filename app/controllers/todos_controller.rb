class TodosController < ApplicationController
    before_action :authenticate_user! 
    def index
        @todos = Todo.order('limit_date').all
        @status = ['todo', 'doing', 'done']  
      end
    
      def show
        id      = params[:id]
        @todo   = todo.find(id)
        @status = ['todo', 'doing', 'done']
      end
    
      def store
        todo = Todo.new
        todo.todo       = params[:todo]
        todo.state      = params[:state]
        todo.limit_date = params[:limit_date]
        todo.save
        redirect_to '/todos', notice: 'タスクを作成しました。'
      end
    
      def update
        id   = params[:id]
        todo = todo.find(1)
    
        todo.todo         = params[:todo]
        todo.state        = params[:state]
        todo.limit_date   = params[:limit_date]
        todo.save
    
        redirect_to '/todos', notice: 'タスクを更新しました。'
      end
    
      def destroy
        todo       = todo.find(params[:id])
        todo.destroy

        redirect_to '/todos', notice: 'タスクを削除しました。'
      end




end
