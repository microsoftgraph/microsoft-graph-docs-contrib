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
			start_date_time = "2023-01-12T15:31:26Z",
			type = "AsymmetricX509Cert",
			usage = "Verify",
			key = base64.urlsafe_b64decode("base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A=="),
			display_name = "CN=20230112",
		),
	],
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```