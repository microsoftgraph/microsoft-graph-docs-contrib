---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AddKeyPostRequestBody(
	key_credential = KeyCredential(
		type = "AsymmetricX509Cert",
		usage = "Verify",
		key = base64.urlsafe_b64decode("MIIDYDCCAki..."),
	),
	password_credential = None,
	proof = "eyJ0eXAiOiJ...",
)

result = await graph_client.applications.by_application_id('application-id').add_key.post(request_body)


```