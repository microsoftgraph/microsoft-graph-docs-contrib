---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.applications.item.synchronization.acquire_access_token.acquire_access_token_post_request_body import AcquireAccessTokenPostRequestBody
from msgraph.generated.models.synchronization_secret_key_string_value_pair import SynchronizationSecretKeyStringValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AcquireAccessTokenPostRequestBody(
	credentials = [
		SynchronizationSecretKeyStringValuePair(
			odata_type = "microsoft.graph.synchronizationSecretKeyStringValuePair",
		),
	],
)

await graph_client.applications.by_application_id('application-id').synchronization.acquire_access_token.post(request_body)


```