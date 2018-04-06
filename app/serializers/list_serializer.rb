class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :private, :created_at

  def name
    object.name
  end

  def private
    object.private
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
