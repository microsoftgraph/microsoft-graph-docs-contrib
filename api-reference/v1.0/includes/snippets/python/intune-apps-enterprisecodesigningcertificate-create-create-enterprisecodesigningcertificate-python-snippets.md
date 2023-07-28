---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EnterpriseCodeSigningCertificate()
request_body.@odata_type = '#microsoft.graph.enterpriseCodeSigningCertificate'

request_body.Content(base64_decode('Y29udGVudA=='))

request_body.status(CertificateStatus.Provisioned('certificatestatus.provisioned'))

request_body.subject_name = 'Subject Name value'

request_body.subject = 'Subject value'

request_body.issuer_name = 'Issuer Name value'

request_body.issuer = 'Issuer value'

request_body.expirationDateTime = DateTime('2016-12-31T23:57:57.2481234-08:00')

request_body.uploadDateTime = DateTime('2016-12-31T23:58:46.5747426-08:00')




result = await client.device_app_management.enterprise_code_signing_certificates.post(request_body = request_body)


```