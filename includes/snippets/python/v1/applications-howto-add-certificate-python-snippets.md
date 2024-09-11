---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.key_credential import KeyCredential
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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