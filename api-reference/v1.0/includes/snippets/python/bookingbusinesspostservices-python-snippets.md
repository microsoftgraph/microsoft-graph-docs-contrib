---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingService()
request_body.@odata_type = '#microsoft.graph.bookingService'

request_body.defaultduration =  \DateInterval('PT1H30M')

default_location = Location()
default_location.@odata_type = '#microsoft.graph.location'

default_locationaddress = PhysicalAddress()
default_locationaddress.@odata_type = '#microsoft.graph.physicalAddress'

default_locationaddress.city = 'Buffalo'

default_locationaddress.country_or_region = 'USA'

default_locationaddress.postal_code = '98052'

default_locationaddress.state = 'NY'

default_locationaddress.street = '4567 First Street'

additional_data = [
'post_office_box' => 		null,
'type@odata_type' => '#microsoft.graph.physicalAddressType', 
'type' => 		null,
];
default_locationaddress.additional_data(additional_data)



default_location.address = default_locationaddress
default_location.coordinates=null

default_location.display_name = 'Contoso Lunch Delivery'

default_location.locationEmailAddress=null

default_location.locationType=null

default_location.locationUri=null

default_location.uniqueId=null

default_location.uniqueIdType=null

additional_data = [
'location_type@odata_type' => '#microsoft.graph.locationType', 
'unique_id_type@odata_type' => '#microsoft.graph.locationUniqueIdType', 
];
default_location.additional_data(additional_data)



request_body.default_location = default_location
request_body.DefaultPrice = 10

request_body.defaultpricetype(BookingPriceType.FixedPrice('bookingpricetype.fixedprice'))

default_reminders_booking_reminder1 = BookingReminder()
default_reminders_booking_reminder1.@odata_type = '#microsoft.graph.bookingReminder'

default_reminders_booking_reminder1.message = 'Please be reminded that this service is tomorrow.'

default_reminders_booking_reminder1.offset =  \DateInterval('P1D')

default_reminders_booking_reminder1.recipients(BookingReminderRecipients.AllAttendees('bookingreminderrecipients.allattendees'))

additional_data = [
'recipients@odata_type' => '#microsoft.graph.bookingReminderRecipients', 
];
default_reminders_booking_reminder1.additional_data(additional_data)



defaultRemindersArray []= defaultRemindersBookingReminder1;
request_body.defaultreminders(defaultRemindersArray)


request_body.description = 'Individual bento box lunch delivery'

request_body.display_name = 'Bento'

request_body.is_location_online = True

request_body.sms_notifications_enabled = True

request_body.language_tag = 'en-US'

request_body.is_hidden_from_customers = False

request_body.notes = 'Home-cooked special'

request_body.postbuffer =  \DateInterval('PT10M')

request_body.prebuffer =  \DateInterval('PT5M')

scheduling_policy = BookingSchedulingPolicy()
scheduling_policy.@odata_type = '#microsoft.graph.bookingSchedulingPolicy'

scheduling_policy.allow_staff_selection = True

scheduling_policy.maximumadvance =  \DateInterval('P10D')

scheduling_policy.minimumleadtime =  \DateInterval('PT10H')

scheduling_policy.send_confirmations_to_owner = True

scheduling_policy.timeslotinterval =  \DateInterval('PT1H')


request_body.scheduling_policy = scheduling_policy
request_body.StaffMemberIds(['d90d1e8c-5cfe-48cf-a2d5-966267375b6a', '2f5f8794-0b29-45b5-b56a-2eb5ff7aa880', ])

request_body.is_anonymous_join_enabled = False

additional_data = [
'default_price_type@odata_type' => '#microsoft.graph.bookingPriceType', 
'default_reminders@odata_type' => '#Collection(microsoft.graph.bookingReminder)', 
'staff_member_ids@odata_type' => '#Collection(String)', 
];
request_body.additional_data(additional_data)





result = await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').services.post(request_body = request_body)


```