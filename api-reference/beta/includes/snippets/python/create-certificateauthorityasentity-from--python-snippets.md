---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.certificate_authority_as_entity import CertificateAuthorityAsEntity

graph_client = GraphServiceClient(credentials, scopes)

request_body = CertificateAuthorityAsEntity(
	is_root_authority = True,
	certificate = base64.urlsafe_b64decode("MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB...."),
	issuer = "ExampleIssuer",
	issuer_subject_key_identifier = " BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9",
)

result = await graph_client.directory.certificate_authorities.certificate_based_application_configurations.by_certificate_based_application_configuration_id('certificateBasedApplicationConfiguration-id').trusted_certificate_authorities.post(request_body)


```