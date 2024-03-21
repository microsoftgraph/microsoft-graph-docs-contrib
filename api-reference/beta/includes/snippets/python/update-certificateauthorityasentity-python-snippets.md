---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.certificate_authority_as_entity import CertificateAuthorityAsEntity

graph_client = GraphServiceClient(credentials, scopes)

request_body = CertificateAuthorityAsEntity(
	is_root_authority = True,
)

result = await graph_client.directory.certificate_authorities.certificate_based_application_configurations.by_certificate_based_application_configuration_id('certificateBasedApplicationConfiguration-id').trusted_certificate_authorities.by_certificate_authority_as_entity_id('certificateAuthorityAsEntity-id').patch(request_body)


```