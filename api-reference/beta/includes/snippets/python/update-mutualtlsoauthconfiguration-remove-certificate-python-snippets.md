---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mutual_tls_oauth_configuration import MutualTlsOauthConfiguration
from msgraph_beta.generated.models.certificate_authority import CertificateAuthority
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MutualTlsOauthConfiguration(
	certificate_authorities = [
		CertificateAuthority(
			is_root_authority = True,
			certificate_revocation_list_url = "http://acme.com/root.crl",
			delta_certificate_revocation_list_url = None,
			certificate = base64.urlsafe_b64decode("Binary"),
			issuer = "acme Inc",
			additional_data = {
					"issuer_subjectkey_identifier" : "SKI",
			}
		),
	],
)

result = await graph_client.directory.certificate_authorities.mutual_tls_oauth_configurations.by_mutual_tls_oauth_configuration_id('mutualTlsOauthConfiguration-id').patch(request_body)


```