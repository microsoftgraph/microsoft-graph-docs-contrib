---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UploadClientCertificatePostRequestBody()
request_body.pkcs12_value = 'eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA'

request_body.password = '<password>'




result = await client.identity.api_connectors.by_api_connector_id('identityApiConnector-id').upload_client_certificate.post(request_body = request_body)


```