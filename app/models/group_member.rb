class GroupMember < Sequel::Model(DB[:group_members])
  many_to_one :group
  many_to_one :member
end
