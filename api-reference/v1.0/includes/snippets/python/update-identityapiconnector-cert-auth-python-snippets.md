---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.identity_api_connector import IdentityApiConnector
from msgraph.generated.models.pkcs12_certificate import Pkcs12Certificate

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityApiConnector(
	authentication_configuration = Pkcs12Certificate(
		odata_type = "#microsoft.graph.pkcs12Certificate",
		pkcs12_value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		password = "secret",
	),
)

result = await graph_client.identity.api_connectors.by_identity_api_connector_id('identityApiConnector-id').patch(request_body)


```