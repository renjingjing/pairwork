class SnippetsController < ApplicationController
  def index
  end
  def new
  @snippet=Snippet.new
  end
  def show
      @kind  = Kind.find params[:id]
      @snippets = @kind.snippets
    end
  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to new_snippet_path(@snippet), notice: "Snippet Created"
    else
      render :new
    end
  end

    private
    def snippet_params
        params.require(:snippet).permit([:title, :work, :kind_id])
    end
end
