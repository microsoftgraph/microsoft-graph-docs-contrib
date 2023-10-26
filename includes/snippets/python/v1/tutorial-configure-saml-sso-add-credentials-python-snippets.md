---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	key_credentials = [
		KeyCredential(
			custom_key_identifier = base64.urlsafe_b64decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			end_date_time = "2021-04-22T22:10:13Z",
			key_id = UUID("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			start_date_time = "2020-04-22T21:50:13Z",
			type = "X509CertAndPassword",
			usage = "Sign",
			key = base64.urlsafe_b64decode("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A=="),
			display_name = "CN=awsAPI",
		),
		KeyCredential(
			custom_key_identifier = base64.urlsafe_b64decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			end_date_time = "2021-04-22T22:10:13Z",
			key_id = UUID("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"),
			start_date_time = "2020-04-22T21:50:13Z",
			type = "AsymmetricX509Cert",
			usage = "Verify",
			key = base64.urlsafe_b64decode("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg=="),
			display_name = "CN=awsAPI",
		),
	],
	password_credentials = [
		PasswordCredential(
			custom_key_identifier = base64.urlsafe_b64decode("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			key_id = UUID("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			end_date_time = "2022-01-27T19:40:33Z",
			start_date_time = "2020-04-20T19:40:33Z",
			secret_text = "61891f4ee44d",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```