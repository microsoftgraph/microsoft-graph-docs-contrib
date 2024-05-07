---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.applications.item.add_key.add_key_post_request_body import AddKeyPostRequestBody
from msgraph.generated.models.key_credential import KeyCredential
from msgraph.generated.models.password_credential import PasswordCredential

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddKeyPostRequestBody(
	key_credential = KeyCredential(
		type = "X509CertAndPassword",
		usage = "Sign",
		key = base64.urlsafe_b64decode("MIIDYDCCAki..."),
	),
	password_credential = PasswordCredential(
		secret_text = "MKTr0w1...",
	),
	proof = "eyJ0eXAiOiJ...",
)

result = await graph_client.applications.by_application_id('application-id').add_key.post(request_body)


```