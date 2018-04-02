class RenameConferenceRoomNumberOfMonitorssToNumberOfMonitors < ActiveRecord::Migration[5.1]
  def change
    rename_column :conference_rooms, :number_of_monitorss, :number_of_monitors
  end
end
