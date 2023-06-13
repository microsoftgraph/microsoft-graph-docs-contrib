---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetVerifiedPublisherPostRequestBody()
request_body.verified_publisher_id = '1234567'




await client.applications.by_application_id('application-id').set_verified_publisher.post(request_body = request_body)


```