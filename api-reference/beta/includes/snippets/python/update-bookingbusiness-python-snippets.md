---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingBusiness()
request_body.email = 'admin@fabrikam.com'

scheduling_policy = BookingSchedulingPolicy()
scheduling_policy.timeslotinterval =  \DateInterval('PT60M')

scheduling_policy.minimumleadtime =  \DateInterval('P1D')

scheduling_policy.maximumadvance =  \DateInterval('P30D')

scheduling_policy.send_confirmations_to_owner = True

scheduling_policy.allow_staff_selection = True


request_body.scheduling_policy = scheduling_policy



result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').patch(request_body = request_body)


```