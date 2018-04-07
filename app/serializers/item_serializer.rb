class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :created_at, :completed

  def description
    object.description
  end

  def completed
    object.completed
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
