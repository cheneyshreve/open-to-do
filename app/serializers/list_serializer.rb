class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :permissions, :created_at, :private

  def name
    object.name
  end

  def permissions
    object.permissions
  end

  def private
    object.private
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
