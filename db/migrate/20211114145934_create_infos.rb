class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.date :day
      t.text :content

      t.timestamps
    end
  end
end
