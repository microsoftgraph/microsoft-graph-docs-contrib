---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CertificateBasedAuthConfiguration()
certificate_authorities_certificate_authority1 = CertificateAuthority()
certificate_authorities_certificate_authority1.is_root_authority = True

certificate_authorities_certificate_authority1.Certificate(base64_decode('Binary'))


certificateAuthoritiesArray []= certificateAuthoritiesCertificateAuthority1;
request_body.certificateauthorities(certificateAuthoritiesArray)





result = await client.organization.by_organization_id('organization-id').certificate_based_auth_configuration.post(request_body = request_body)


```