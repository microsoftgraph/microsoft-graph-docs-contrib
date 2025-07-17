---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mutual_tls_oauth_configuration import MutualTlsOauthConfiguration
from msgraph_beta.generated.models.tls_client_registration_metadata import TlsClientRegistrationMetadata
from msgraph_beta.generated.models.certificate_authority import CertificateAuthority
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MutualTlsOauthConfiguration(
	display_name = "DoorCamera_Model_X_TrustedCAs",
	tls_client_auth_parameter = TlsClientRegistrationMetadata.Tls_client_auth_san_uri,
	certificate_authorities = [
		CertificateAuthority(
			odata_type = "microsoft.graph.certificateAuthority",
		),
	],
)

result = await graph_client.directory.certificate_authorities.mutual_tls_oauth_configurations.post(request_body)


```