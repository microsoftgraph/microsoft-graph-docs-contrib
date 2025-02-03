---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.enterprise_code_signing_certificate import EnterpriseCodeSigningCertificate
from msgraph_beta.generated.models.certificate_status import CertificateStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EnterpriseCodeSigningCertificate(
	odata_type = "#microsoft.graph.enterpriseCodeSigningCertificate",
	content = base64.urlsafe_b64decode("Y29udGVudA=="),
	status = CertificateStatus.Provisioned,
	subject_name = "Subject Name value",
	subject = "Subject value",
	issuer_name = "Issuer Name value",
	issuer = "Issuer value",
	expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
	upload_date_time = "2016-12-31T23:58:46.5747426-08:00",
)

result = await graph_client.device_app_management.enterprise_code_signing_certificates.post(request_body)


```