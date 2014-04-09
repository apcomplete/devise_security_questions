class DeviseSecurityQuestionsCreateQuestions < ActiveRecord::Migration
  def change
    create_table :devise_security_questions do |t|
      t.string   :title

      t.timestamps
    end
  end
end
