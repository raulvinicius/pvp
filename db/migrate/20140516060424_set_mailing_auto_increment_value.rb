class SetMailingAutoIncrementValue < ActiveRecord::Migration
  def change
    execute("ALTER SEQUENCE mailings_id_seq RESTART WITH 165495665")
  end
end
