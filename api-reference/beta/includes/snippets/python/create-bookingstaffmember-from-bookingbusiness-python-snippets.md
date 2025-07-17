---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.booking_staff_member import BookingStaffMember
from msgraph_beta.generated.models.booking_staff_role import BookingStaffRole
from msgraph_beta.generated.models.booking_work_hours import BookingWorkHours
from msgraph_beta.generated.models.day_of_week import DayOfWeek
from msgraph_beta.generated.models.booking_work_time_slot import BookingWorkTimeSlot
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingStaffMember(
	odata_type = "#microsoft.graph.bookingStaffMember",
	color_index = 1,
	display_name = "Dana Swope",
	email_address = "danas@contoso.com",
	role = BookingStaffRole.ExternalGuest,
	time_zone = "America/Chicago",
	use_business_hours = True,
	working_hours = [
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Monday,
			time_slots = [
				BookingWorkTimeSlot(
					odata_type = "#microsoft.graph.bookingWorkTimeSlot",
					end = "17:00:00.0000000",
					start = "08:00:00.0000000",
				),
			],
			additional_data = {
					"day@odata_type" : "#microsoft.graph.dayOfWeek",
					"time_slots@odata_type" : "#Collection(microsoft.graph.bookingWorkTimeSlot)",
			}
		),
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Tuesday,
			time_slots = [
				BookingWorkTimeSlot(
					odata_type = "#microsoft.graph.bookingWorkTimeSlot",
					end = "17:00:00.0000000",
					start = "08:00:00.0000000",
				),
			],
			additional_data = {
					"day@odata_type" : "#microsoft.graph.dayOfWeek",
					"time_slots@odata_type" : "#Collection(microsoft.graph.bookingWorkTimeSlot)",
			}
		),
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Wednesday,
			time_slots = [
				BookingWorkTimeSlot(
					odata_type = "#microsoft.graph.bookingWorkTimeSlot",
					end = "17:00:00.0000000",
					start = "08:00:00.0000000",
				),
			],
			additional_data = {
					"day@odata_type" : "#microsoft.graph.dayOfWeek",
					"time_slots@odata_type" : "#Collection(microsoft.graph.bookingWorkTimeSlot)",
			}
		),
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Thursday,
			time_slots = [
				BookingWorkTimeSlot(
					odata_type = "#microsoft.graph.bookingWorkTimeSlot",
					end = "17:00:00.0000000",
					start = "08:00:00.0000000",
				),
			],
			additional_data = {
					"day@odata_type" : "#microsoft.graph.dayOfWeek",
					"time_slots@odata_type" : "#Collection(microsoft.graph.bookingWorkTimeSlot)",
			}
		),
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Friday,
			time_slots = [
				BookingWorkTimeSlot(
					odata_type = "#microsoft.graph.bookingWorkTimeSlot",
					end = "17:00:00.0000000",
					start = "08:00:00.0000000",
				),
			],
			additional_data = {
					"day@odata_type" : "#microsoft.graph.dayOfWeek",
					"time_slots@odata_type" : "#Collection(microsoft.graph.bookingWorkTimeSlot)",
			}
		),
	],
	is_email_notification_enabled = False,
	additional_data = {
			"role@odata_type" : "#microsoft.graph.bookingStaffRole",
			"working_hours@odata_type" : "#Collection(microsoft.graph.bookingWorkHours)",
	}
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').staff_members.post(request_body)


```