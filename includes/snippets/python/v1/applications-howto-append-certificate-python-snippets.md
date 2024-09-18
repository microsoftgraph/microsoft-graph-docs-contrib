---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.key_credential import KeyCredential

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	key_credentials = [
		KeyCredential(
			end_date_time = "2024-01-11T15:31:26Z",
			start_date_time = "2023-01-12T09:31:26Z",
			type = "AsymmetricX509Cert",
			usage = "Verify",
			key = base64.urlsafe_b64decode("base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ=="),
			display_name = "CN=20230114",
		),
		KeyCredential(
			custom_key_identifier = base64.urlsafe_b64decode("52ED9B5038A47B9E2E2190715CC238359D4F8F73"),
			type = "AsymmetricX509Cert",
			usage = "Verify",
			key = base64.urlsafe_b64decode("base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA=="),
			display_name = "CN=20230113",
		),
	],
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```