---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_api_connector import IdentityApiConnector
from msgraph_beta.generated.models.pkcs12_certificate import Pkcs12Certificate

graph_client = GraphServiceClient(credentials, scopes)

request_body = IdentityApiConnector(
	display_name = "Test API",
	target_url = "https://someotherapi.com/api",
	authentication_configuration = Pkcs12Certificate(
		odata_type = "#microsoft.graph.pkcs12Certificate",
		pkcs12_value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		password = "<password>",
	),
)

result = await graph_client.identity.api_connectors.post(request_body)


```