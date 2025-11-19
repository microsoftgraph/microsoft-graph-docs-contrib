---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.upn_sign_in_identifier import UpnSignInIdentifier
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpnSignInIdentifier(
	odata_type = "#microsoft.graph.upnSignInIdentifier",
	name = "UPN",
	is_enabled = True,
)

result = await graph_client.identity.sign_in_identifiers.by_sign_in_identifier_base_name('signInIdentifierBase-name').patch(request_body)


```