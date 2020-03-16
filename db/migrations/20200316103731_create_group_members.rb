# frozen_string_literal: true

Sequel.migration do
  up do
    create_table :group_members do
      primary_key :id, :uuid, default: Sequel.function(:uuid_generate_v4)
      column :group_id, :uuid, null: false
      column :member_id, :uuid, null: false
      column :created_at, Time, default: Sequel.function(:now)
      column :updated_at, Time, default: Sequel.function(:now)
    end
  end

  down do
    drop_table :group_members
  end
end
