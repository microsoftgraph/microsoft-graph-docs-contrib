---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
key_credentials_key_credential1 = KeyCredential()
key_credentials_key_credential1.endDateTime = DateTime('2024-01-11T15:31:26Z')

key_credentials_key_credential1.startDateTime = DateTime('2023-01-12T15:31:26Z')

key_credentials_key_credential1.type = 'AsymmetricX509Cert'

key_credentials_key_credential1.usage = 'Verify'

key_credentials_key_credential1.Key(base64_decode('base64MIIDADCCAeigAwIBAgIQP6HEGDdZ65xJTcK4dCBvZzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMjAeFw0yMzAxMTIwODExNTZaFw0yNDAxMTIwODMxNTZaMBMxETAPBgNVBAMMCDIwMjMwMTEyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAseKf1weEacJ67D6/...laxQPUbuIL+DaXVkKRm1V3GgIpKTBqMzTf4tCpy7rpUZbhcwAFw6h9A=='))

key_credentials_key_credential1.display_name = 'CN=20230112'


keyCredentialsArray []= keyCredentialsKeyCredential1;
request_body.keycredentials(keyCredentialsArray)





result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```