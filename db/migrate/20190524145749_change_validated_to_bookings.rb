class ChangeValidatedToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column_default :bookings, :validated, false
  end
end
