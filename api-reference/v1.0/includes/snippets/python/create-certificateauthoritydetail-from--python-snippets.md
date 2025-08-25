---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.certificate_authority_detail import CertificateAuthorityDetail
from msgraph_beta.generated.models.certificate_authority_type import CertificateAuthorityType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CertificateAuthorityDetail(
	certificate_authority_type = CertificateAuthorityType.Intermediate,
)

result = await graph_client.directory.public_key_infrastructure.certificate_based_auth_configurations.by_certificate_based_auth_pki_id('certificateBasedAuthPki-id').certificate_authorities.post(request_body)


```