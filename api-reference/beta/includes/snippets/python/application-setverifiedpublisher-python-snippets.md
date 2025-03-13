---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.applications.item.set_verified_publisher.set_verified_publisher_post_request_body import SetVerifiedPublisherPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SetVerifiedPublisherPostRequestBody(
	verified_publisher_id = "1234567",
)

await graph_client.applications.by_application_id('application-id').set_verified_publisher.post(request_body)


```