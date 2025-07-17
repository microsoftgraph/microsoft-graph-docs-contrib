---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.booking_appointment import BookingAppointment
from msgraph.generated.models.booking_price_type import BookingPriceType
from msgraph.generated.models.booking_reminder import BookingReminder
from msgraph.generated.models.booking_reminder_recipients import BookingReminderRecipients
from msgraph.generated.models.location import Location
from msgraph.generated.models.physical_address import PhysicalAddress
from msgraph.generated.models.booking_customer_information_base import BookingCustomerInformationBase
from msgraph.generated.models.booking_customer_information import BookingCustomerInformation
from msgraph.generated.models.outlook_geo_coordinates import OutlookGeoCoordinates
from msgraph.generated.models.booking_question_answer import BookingQuestionAnswer
from msgraph.generated.models.answer_input_type import AnswerInputType
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingAppointment(
	odata_type = "#microsoft.graph.bookingAppointment",
	customer_time_zone = "America/Chicago",
	customer_name = "Jordan Miller",
	customer_email_address = "jordanm@contoso.com",
	customer_phone = "213-555-0199",
	customer_notes = None,
	sms_notifications_enabled = True,
	is_customer_allowed_to_manage_booking = True,
	is_location_online = True,
	opt_out_of_customer_email = False,
	anonymous_join_web_url = None,
	post_buffer = "PT10M",
	pre_buffer = "PT5M",
	price = 10,
	price_type = BookingPriceType.FixedPrice,
	reminders = [
		BookingReminder(
			odata_type = "#microsoft.graph.bookingReminder",
			message = "This service is tomorrow",
			offset = "P1D",
			recipients = BookingReminderRecipients.AllAttendees,
			additional_data = {
					"recipients@odata_type" : "#microsoft.graph.bookingReminderRecipients",
			}
		),
		BookingReminder(
			odata_type = "#microsoft.graph.bookingReminder",
			message = "Please be available to enjoy your lunch service.",
			offset = "PT1H",
			recipients = BookingReminderRecipients.Customer,
			additional_data = {
					"recipients@odata_type" : "#microsoft.graph.bookingReminderRecipients",
			}
		),
		BookingReminder(
			odata_type = "#microsoft.graph.bookingReminder",
			message = "Please check traffic for next cater.",
			offset = "PT2H",
			recipients = BookingReminderRecipients.Staff,
			additional_data = {
					"recipients@odata_type" : "#microsoft.graph.bookingReminderRecipients",
			}
		),
	],
	service_id = "57da6774-a087-4d69-b0e6-6fb82c339976",
	service_location = Location(
		odata_type = "#microsoft.graph.location",
		address = PhysicalAddress(
			odata_type = "#microsoft.graph.physicalAddress",
			city = "Buffalo",
			country_or_region = "USA",
			postal_code = "98052",
			state = "NY",
			street = "123 First Avenue",
			additional_data = {
					"post_office_box" : None,
					"type@odata_type" : "#microsoft.graph.physicalAddressType",
					"type" : None,
			}
		),
		coordinates = None,
		display_name = "Customer location",
		location_email_address = None,
		location_type = None,
		location_uri = None,
		unique_id = None,
		unique_id_type = None,
		additional_data = {
				"location_type@odata_type" : "#microsoft.graph.locationType",
				"unique_id_type@odata_type" : "#microsoft.graph.locationUniqueIdType",
		}
	),
	service_name = "Catered bento",
	service_notes = "Customer requires punctual service.",
	staff_member_ids = [
		"8ee1c803-a1fa-406d-8259-7ab53233f148",
	],
	maximum_attendees_count = 5,
	filled_attendees_count = 1,
	customers = [
		BookingCustomerInformation(
			odata_type = "#microsoft.graph.bookingCustomerInformation",
			customer_id = "7ed53fa5-9ef2-4f2f-975b-27447440bc09",
			name = "Jordan Miller",
			email_address = "jordanm@contoso.com",
			phone = "213-555-0199",
			notes = None,
			location = Location(
				odata_type = "#microsoft.graph.location",
				display_name = "Customer",
				location_email_address = None,
				location_uri = "",
				location_type = None,
				unique_id = None,
				unique_id_type = None,
				address = PhysicalAddress(
					odata_type = "#microsoft.graph.physicalAddress",
					street = "",
					city = "",
					state = "",
					country_or_region = "",
					postal_code = "",
				),
				coordinates = OutlookGeoCoordinates(
					altitude = None,
					latitude = None,
					longitude = None,
					accuracy = None,
					altitude_accuracy = None,
				),
			),
			time_zone = "America/Chicago",
			custom_question_answers = [
				BookingQuestionAnswer(
					question_id = "3bc6fde0-4ad3-445d-ab17-0fc15dba0774",
					question = "What is your age?",
					answer_input_type = AnswerInputType.Text,
					answer_options = [
					],
					is_required = True,
					answer = "25",
					selected_options = [
					],
				),
			],
		),
	],
	additional_data = {
			"end" : {
					"@odata_type" : "#microsoft.graph.dateTimeTimeZone",
					"date_time" : "2018-05-01T12:30:00.0000000+00:00",
					"time_zone" : "UTC",
			},
			"price_type@odata_type" : "#microsoft.graph.bookingPriceType",
			"reminders@odata_type" : "#Collection(microsoft.graph.bookingReminder)",
			"start" : {
					"@odata_type" : "#microsoft.graph.dateTimeTimeZone",
					"date_time" : "2018-05-01T12:00:00.0000000+00:00",
					"time_zone" : "UTC",
			},
			"customers@odata_type" : "#Collection(microsoft.graph.bookingCustomerInformation)",
	}
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.post(request_body)


```