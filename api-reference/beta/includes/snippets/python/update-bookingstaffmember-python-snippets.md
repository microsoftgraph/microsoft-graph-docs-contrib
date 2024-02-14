---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.booking_staff_member import BookingStaffMember
from msgraph.generated.models.booking_work_hours import BookingWorkHours
from msgraph.generated.models.booking_work_time_slot import BookingWorkTimeSlot

graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingStaffMember(
	working_hours = [
		BookingWorkHours(
			odata_type = "#microsoft.graph.bookingWorkHours",
			day = DayOfWeek.Monday,
			time_slots = [
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
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').staff_members.by_booking_staff_member_id('bookingStaffMember-id').patch(request_body)


```