class Group < Sequel::Model(DB[:groups])
  many_to_one :organisation
  one_to_many :group_members
  many_to_many :members, join_table: :group_members

  def validate
    super
    validates_presence [:organisation_id]
  end
end
