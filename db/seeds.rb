@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "John",
                    last_name: "Snow",
                     phone: "4195617800")

puts '1 user created'

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf",
                 first_name: "Admin",
                 last_name: "Name",
                 phone: "4195617800")


 AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
 AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
 AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

 puts "3 AuditLogs have been created"

puts '1 AdminUser created'
100.times do |post|
  Post.create!(date: Date.today,
               rationale: "#{post} rationale content feoefiief ebvigr grejirgergie rjirejrirghrgeigjrigrj jfg iwjrireigvhr eijr aeirgejgrio jraegigr jrgrijgirjgr j irgjgigrjoi jrgirgjoireghjg rirge hjrioreggroiregjgiojrgoigrj j oijgrwirgjgriogrjgrvjgr iwrgjrg irgjrg",
               user_id: @user.id,
               overtime_request: 2.5)
end

puts "100 Posts have been created"
