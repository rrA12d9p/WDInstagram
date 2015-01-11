module EntriesHelper
	def entry
    return Entry.find(params[:id])
  end

  def owned_by_current_user?
    return current_user == entry.user
  end
end
