---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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