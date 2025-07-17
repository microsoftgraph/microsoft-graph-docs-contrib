---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.apple_managed_identity_provider import AppleManagedIdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppleManagedIdentityProvider(
	odata_type = "microsoft.graph.appleManagedIdentityProvider",
	display_name = "Apple",
	developer_id = "qazx.1234",
	service_id = "com.contoso.app",
	key_id = "4294967296",
	certificate_data = "******",
)

result = await graph_client.identity.identity_providers.post(request_body)


```