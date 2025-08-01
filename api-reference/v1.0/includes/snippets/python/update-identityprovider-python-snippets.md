---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_provider import IdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityProvider(
	client_secret = "1111111111111",
)

result = await graph_client.identity_providers.by_identity_provider_id('identityProvider-id').patch(request_body)


```