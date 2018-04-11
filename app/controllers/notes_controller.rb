class NotesController < ApplicationController
  
  def index
    @notes = Note.newest_first
    respond_to do |format|
      format.html
      format.json {render :json => @notes}
    end
  end

  def react
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to(notes_path)
    else
      render('new')
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      redirect_to(note_path(@note))
    else
      render('edit')
    end
  end

  def delete
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :content)
  end

end
