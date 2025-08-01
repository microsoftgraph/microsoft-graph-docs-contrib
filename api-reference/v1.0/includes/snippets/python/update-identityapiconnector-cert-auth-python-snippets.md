---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.identity_api_connector import IdentityApiConnector
from msgraph.generated.models.pkcs12_certificate import Pkcs12Certificate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityApiConnector(
	authentication_configuration = Pkcs12Certificate(
		odata_type = "#microsoft.graph.pkcs12Certificate",
		pkcs12_value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		password = "secret",
	),
)

result = await graph_client.identity.api_connectors.by_identity_api_connector_id('identityApiConnector-id').patch(request_body)


```