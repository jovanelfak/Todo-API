class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :full_name

  # Delegate the practical definition of `full_name` to
  # the User model, where it belongs, rather than
  # (re)defining it here.
  def full_name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
