---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
key_credentials_key_credential1 = KeyCredential()
key_credentials_key_credential1.endDateTime = DateTime('2024-01-11T15:31:26Z')

key_credentials_key_credential1.startDateTime = DateTime('2023-01-12T09:31:26Z')

key_credentials_key_credential1.type = 'AsymmetricX509Cert'

key_credentials_key_credential1.usage = 'Verify'

key_credentials_key_credential1.Key(base64_decode('base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ=='))

key_credentials_key_credential1.display_name = 'CN=20230114'


keyCredentialsArray []= keyCredentialsKeyCredential1;
key_credentials_key_credential2 = KeyCredential()
key_credentials_key_credential2.CustomKeyIdentifier(base64_decode('52ED9B5038A47B9E2E2190715CC238359D4F8F73'))

key_credentials_key_credential2.type = 'AsymmetricX509Cert'

key_credentials_key_credential2.usage = 'Verify'

key_credentials_key_credential2.Key(base64_decode('base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA=='))

key_credentials_key_credential2.display_name = 'CN=20230113'


keyCredentialsArray []= keyCredentialsKeyCredential2;
request_body.keycredentials(keyCredentialsArray)





result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```