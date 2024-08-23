---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity.apiconnectors.item.upload_client_certificate.upload_client_certificate_post_request_body import UploadClientCertificatePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UploadClientCertificatePostRequestBody(
	pkcs12_value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
	password = "<password>",
)

result = await graph_client.identity.api_connectors.by_identity_api_connector_id('identityApiConnector-id').upload_client_certificate.post(request_body)


```