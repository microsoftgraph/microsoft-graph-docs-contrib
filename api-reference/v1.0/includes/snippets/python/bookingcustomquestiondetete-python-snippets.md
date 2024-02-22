---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').custom_questions.by_booking_custom_question_id('bookingCustomQuestion-id').delete()


```