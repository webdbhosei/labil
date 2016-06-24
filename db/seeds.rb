
Location.create( name: 'zaishitsu')
Location.create( name: 'gaishutsu')
Location.create( name: 'kitaku')

ActiveRecord::Base.transaction do
location = Location.last
member = Member.new(name: "test")
member.save!
member = Member.find_by_name("test")
status = Status.new(member_id: member.id, location_id: location.id)
status.save!
end

Message.create( member_id: 1, message: "test_1")
Message.create( member_id: 2, message: "test_2")
Message.create( member_id: 1, message: "test_1snd")
Message.create( member_id: 3, message: "test_3")


