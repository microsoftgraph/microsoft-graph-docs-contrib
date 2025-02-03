---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.remove_key.remove_key_post_request_body import RemoveKeyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveKeyPostRequestBody(
	key_id = UUID("f0b0b335-1d71-4883-8f98-567911bfdca6"),
	proof = "eyJ0eXAiOiJ...",
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').remove_key.post(request_body)


```