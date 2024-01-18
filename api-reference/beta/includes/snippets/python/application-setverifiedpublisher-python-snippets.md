---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SetVerifiedPublisherPostRequestBody(
	verified_publisher_id = "1234567",
)

await graph_client.applications.by_application_id('application-id').set_verified_publisher.post(request_body)


```