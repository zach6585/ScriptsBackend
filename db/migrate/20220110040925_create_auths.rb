class CreateAuths < ActiveRecord::Migration[6.0]
  def change
    create_table :auths do |t|

      t.timestamps
    end
  end
end
