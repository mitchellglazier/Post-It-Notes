class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    @note = Note.create(note_params)
    if @note.save
      redirect_to root_path
    else
      render: :create
    end
  end

  def destroy
    @note.destroy
    redirect_to root_path
  end

end
