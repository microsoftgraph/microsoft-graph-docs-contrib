---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingService()
request_body.@odata_type = '#microsoft.graph.bookingService'

request_body.defaultduration =  \DateInterval('PT30M')




result = await client.booking_businesses.by_booking_businesse_id('bookingBusiness-id').services.by_service_id('bookingService-id').patch(request_body = request_body)


```