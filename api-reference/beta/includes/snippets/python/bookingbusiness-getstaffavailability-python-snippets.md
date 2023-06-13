---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetStaffAvailabilityPostRequestBody()
request_body.StaffIds(['311a5454-08b2-4560-ba1c-f715e938cb79', ])

start_date_time = DateTimeTimeZone()
start_date_time.date_time = '2022-01-25T00:00:00'

start_date_time.time_zone = 'India Standard Time'


request_body.start_date_time = start_date_time
end_date_time = DateTimeTimeZone()
end_date_time.date_time = '2022-01-26T17:00:00'

end_date_time.time_zone = 'Pacific Standard Time'


request_body.end_date_time = end_date_time



result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').get_staff_availability.post(request_body = request_body)


```