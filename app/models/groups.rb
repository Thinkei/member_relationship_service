class Group < Sequel::Model(DB[:groups])
  def validate
    super
    validates_presence [:organisation_id]
  end
end
