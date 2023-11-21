class CreateMyBloggingWebsites < ActiveRecord::Migration[7.1]
  def change
    create_table :my_blogging_websites do |t|

      t.timestamps
    end
  end
end
