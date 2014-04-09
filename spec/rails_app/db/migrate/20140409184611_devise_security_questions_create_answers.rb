class DeviseSecurityQuestionsCreateAnswers < ActiveRecord::Migration
  def change
    create_table :devise_security_answers do |t|
      t.string :encrypted_body
      t.references :questionable, polymorphic: true
      t.references :question

      t.timestamps
    end
  end
end
