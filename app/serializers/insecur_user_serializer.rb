class InsecureUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :full_name

  def full_name
    object.name
  end
end