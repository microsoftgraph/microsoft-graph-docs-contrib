---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingAppointment()
request_body.@odata_type = '#microsoft.graph.bookingAppointment'

request_body.customer_email_address = 'jordanm@contoso.com'

customer_location = Location()
customer_location.@odata_type = '#microsoft.graph.location'

customer_locationaddress = PhysicalAddress()
customer_locationaddress.@odata_type = '#microsoft.graph.physicalAddress'

customer_locationaddress.city = 'Buffalo'

customer_locationaddress.country_or_region = 'USA'

customer_locationaddress.postal_code = '98052'

customer_locationaddress.postOfficeBox=null

customer_locationaddress.state = 'NY'

customer_locationaddress.street = '123 First Avenue'

customer_locationaddress.type=null

additional_data = [
'type@odata_type' => '#microsoft.graph.physicalAddressType', 
];
customer_locationaddress.additional_data(additional_data)



customer_location.address = customer_locationaddress
customer_location.coordinates=null

customer_location.display_name = 'Customer'

customer_location.locationEmailAddress=null

customer_location.locationType=null

customer_location.locationUri=null

customer_location.uniqueId=null

customer_location.uniqueIdType=null

additional_data = [
'location_type@odata_type' => '#microsoft.graph.locationType', 
'unique_id_type@odata_type' => '#microsoft.graph.locationUniqueIdType', 
];
customer_location.additional_data(additional_data)



request_body.customer_location = customer_location
request_body.customer_name = 'Jordan Miller'

request_body.customer_notes = 'Please be on time.'

request_body.customer_phone = '213-555-0199'

request_body.customer_time_zone = 'America/Chicago'

request_body.sms_notifications_enabled = True

end = DateTimeTimeZone()
end.@odata_type = '#microsoft.graph.dateTimeTimeZone'

end.date_time = '2018-05-01T12:30:00.0000000+00:00'

end.time_zone = 'UTC'


request_body.end = end
request_body.InvoiceAmount = 10

invoice_date = DateTimeTimeZone()
invoice_date.@odata_type = '#microsoft.graph.dateTimeTimeZone'

invoice_date.date_time = '2018-05-01T12:30:00.0000000+00:00'

invoice_date.time_zone = 'UTC'


request_body.invoice_date = invoice_date
request_body.invoice_id = '1001'

request_body.invoicestatus(BookingInvoiceStatus.Open('bookinginvoicestatus.open'))

request_body.invoice_url = 'theInvoiceUrl'

request_body.is_location_online = True

request_body.opt_out_of_customer_email = False

request_body.anonymousJoinWebUrl=null

request_body.postbuffer =  \DateInterval('PT10M')

request_body.prebuffer =  \DateInterval('PT5M')

request_body.Price = 10

request_body.pricetype(BookingPriceType.FixedPrice('bookingpricetype.fixedprice'))

reminders_booking_reminder1 = BookingReminder()
reminders_booking_reminder1.@odata_type = '#microsoft.graph.bookingReminder'

reminders_booking_reminder1.message = 'This service is tomorrow'

reminders_booking_reminder1.offset =  \DateInterval('P1D')

reminders_booking_reminder1.recipients(BookingReminderRecipients.AllAttendees('bookingreminderrecipients.allattendees'))

additional_data = [
'recipients@odata_type' => '#microsoft.graph.bookingReminderRecipients', 
];
reminders_booking_reminder1.additional_data(additional_data)



remindersArray []= remindersBookingReminder1;
reminders_booking_reminder2 = BookingReminder()
reminders_booking_reminder2.@odata_type = '#microsoft.graph.bookingReminder'

reminders_booking_reminder2.message = 'Please be available to enjoy your lunch service.'

reminders_booking_reminder2.offset =  \DateInterval('PT1H')

reminders_booking_reminder2.recipients(BookingReminderRecipients.Customer('bookingreminderrecipients.customer'))

additional_data = [
'recipients@odata_type' => '#microsoft.graph.bookingReminderRecipients', 
];
reminders_booking_reminder2.additional_data(additional_data)



remindersArray []= remindersBookingReminder2;
reminders_booking_reminder3 = BookingReminder()
reminders_booking_reminder3.@odata_type = '#microsoft.graph.bookingReminder'

reminders_booking_reminder3.message = 'Please check traffic for next cater.'

reminders_booking_reminder3.offset =  \DateInterval('PT2H')

reminders_booking_reminder3.recipients(BookingReminderRecipients.Staff('bookingreminderrecipients.staff'))

additional_data = [
'recipients@odata_type' => '#microsoft.graph.bookingReminderRecipients', 
];
reminders_booking_reminder3.additional_data(additional_data)



remindersArray []= remindersBookingReminder3;
request_body.reminders(remindersArray)


request_body.service_id = '57da6774-a087-4d69-b0e6-6fb82c339976'

service_location = Location()
service_location.@odata_type = '#microsoft.graph.location'

service_locationaddress = PhysicalAddress()
service_locationaddress.@odata_type = '#microsoft.graph.physicalAddress'

service_locationaddress.city = 'Buffalo'

service_locationaddress.country_or_region = 'USA'

service_locationaddress.postal_code = '98052'

service_locationaddress.postOfficeBox=null

service_locationaddress.state = 'NY'

service_locationaddress.street = '123 First Avenue'

service_locationaddress.type=null

additional_data = [
'type@odata_type' => '#microsoft.graph.physicalAddressType', 
];
service_locationaddress.additional_data(additional_data)



service_location.address = service_locationaddress
service_location.coordinates=null

service_location.display_name = 'Customer location'

service_location.locationEmailAddress=null

service_location.locationType=null

service_location.locationUri=null

service_location.uniqueId=null

service_location.uniqueIdType=null

additional_data = [
'location_type@odata_type' => '#microsoft.graph.locationType', 
'unique_id_type@odata_type' => '#microsoft.graph.locationUniqueIdType', 
];
service_location.additional_data(additional_data)



request_body.service_location = service_location
request_body.service_name = 'Catered bento'

request_body.service_notes = 'Customer requires punctual service.'

start = DateTimeTimeZone()
start.@odata_type = '#microsoft.graph.dateTimeTimeZone'

start.date_time = '2018-05-01T12:00:00.0000000+00:00'

start.time_zone = 'UTC'


request_body.start = start
request_body.MaximumAttendeesCount = 5

request_body.FilledAttendeesCount = 1

customers_booking_customer_information_base1 = BookingCustomerInformation()
customers_booking_customer_information_base1.@odata_type = '#microsoft.graph.bookingCustomerInformation'

customers_booking_customer_information_base1.customer_id = '7ed53fa5-9ef2-4f2f-975b-27447440bc09'

customers_booking_customer_information_base1.name = 'Jordan Miller'

customers_booking_customer_information_base1.email_address = 'jordanm@contoso.com'

customers_booking_customer_information_base1.phone = '213-555-0199'

customers_booking_customer_information_base1.notes=null

customers_booking_customer_information_base1location = Location()
customers_booking_customer_information_base1location.@odata_type = '#microsoft.graph.location'

customers_booking_customer_information_base1location.display_name = 'Customer'

customers_booking_customer_information_base1location.locationEmailAddress=null

customers_booking_customer_information_base1location.location_uri = ''

customers_booking_customer_information_base1location.locationType=null

customers_booking_customer_information_base1location.uniqueId=null

customers_booking_customer_information_base1location.uniqueIdType=null

customers_booking_customer_information_base1locationaddress = PhysicalAddress()
customers_booking_customer_information_base1locationaddress.@odata_type = '#microsoft.graph.physicalAddress'

customers_booking_customer_information_base1locationaddress.type(PhysicalAddressType.Home('physicaladdresstype.home'))

customers_booking_customer_information_base1locationaddress.post_office_box = ''

customers_booking_customer_information_base1locationaddress.street = ''

customers_booking_customer_information_base1locationaddress.city = ''

customers_booking_customer_information_base1locationaddress.state = ''

customers_booking_customer_information_base1locationaddress.country_or_region = ''

customers_booking_customer_information_base1locationaddress.postal_code = ''


customers_booking_customer_information_base1location.address = customers_booking_customer_information_base1locationaddress
customers_booking_customer_information_base1locationcoordinates = OutlookGeoCoordinates()
customers_booking_customer_information_base1locationcoordinates.altitude=null

customers_booking_customer_information_base1locationcoordinates.latitude=null

customers_booking_customer_information_base1locationcoordinates.longitude=null

customers_booking_customer_information_base1locationcoordinates.accuracy=null

customers_booking_customer_information_base1locationcoordinates.altitudeAccuracy=null


customers_booking_customer_information_base1location.coordinates = customers_booking_customer_information_base1locationcoordinates

customers_booking_customer_information_base1.location = customers_booking_customer_information_base1location
customers_booking_customer_information_base1.time_zone = 'America/Chicago'

custom_question_answers_booking_question_answer1 = BookingQuestionAnswer()
custom_question_answers_booking_question_answer1.question_id = '3bc6fde0-4ad3-445d-ab17-0fc15dba0774'

custom_question_answers_booking_question_answer1.question = 'What is your age'

custom_question_answers_booking_question_answer1.answerinputtype(AnswerInputType.Text('answerinputtype.text'))

custom_question_answers_booking_question_answer1.AnswerOptions([])

custom_question_answers_booking_question_answer1.is_required = True

custom_question_answers_booking_question_answer1.answer = '25'

custom_question_answers_booking_question_answer1.SelectedOptions([])


customQuestionAnswersArray []= customQuestionAnswersBookingQuestionAnswer1;
customers_booking_customer_information_base1.customquestionanswers(customQuestionAnswersArray)



customersArray []= customersBookingCustomerInformationBase1;
request_body.customers(customersArray)


additional_data = [
'invoice_status@odata_type' => '#microsoft.graph.bookingInvoiceStatus', 
'price_type@odata_type' => '#microsoft.graph.bookingPriceType', 
'reminders@odata_type' => '#Collection(microsoft.graph.bookingReminder)', 
];
request_body.additional_data(additional_data)





result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').appointments.post(request_body = request_body)


```