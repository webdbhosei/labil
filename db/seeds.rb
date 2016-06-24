
Location.create( :name=> 'zaishitsu', :category=> '0')
Location.create( :name=> 'gakunai', :category=> '0')
Location.create( :name=>'gaishutsu', :category=> '0')
Location.create( :name=> 'kitaku', :category=> '0')
Location.create( :name=> 'W101', :category=> '1')

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


