---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_provider import IdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityProvider(
	name = "Login with Amazon",
	type = "Amazon",
	client_id = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	client_secret = "000000000000",
)

result = await graph_client.identity_providers.post(request_body)


```