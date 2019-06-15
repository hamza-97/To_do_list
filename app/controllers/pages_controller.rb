class PagesController < ApplicationController
	def index
		@posts = Todo.all
	    @post = Todo.new
	end

	def create
		@post = Todo.create(post_params)
		if @post.valid?
		else
		end
		redirect_to pages_path
	end

	def edit
		@post = Todo.find(params[:id])

	end

	def destroy
		@post = Todo.find(params[:id])
		@post.destroy
        redirect_to pages_path
	end

	def update
		@post = Todo.find(params[:id])
        updated = @post.update_attributes(task_name: params[:todolist][:task_name]) # returns true or flase
		if updated== true
        else
        end
        redirect_to pages_path

	end
	def changer
		@post = Todo.find(params[:id])
		if params[:flags] == "true"
			@post.update(complete: "complete")
		else
		end
		redirect_to pages_path
	
	end

	private
    def post_params
        params.require(:todo).permit(:task_name)
    end

	
end
