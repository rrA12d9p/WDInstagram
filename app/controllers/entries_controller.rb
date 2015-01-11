class EntriesController < ApplicationController
  before_action :authenticate_user!, except: [:all, :show]

  def all
    @all_entries = Entry.order(updated_at: :desc)
  end

  def index
    @all_entries = current_user.entries.order(updated_at: :desc)
  end

  def create
    new_entry = current_user.entries.new(entry_params)

    if new_entry.save
      redirect_to root_path
    else
      render 'entries#new'
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:author, :photo_url, :date_taken)
  end
end
