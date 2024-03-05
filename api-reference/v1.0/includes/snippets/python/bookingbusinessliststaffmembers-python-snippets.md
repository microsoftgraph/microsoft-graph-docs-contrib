---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').staff_members.get()


```