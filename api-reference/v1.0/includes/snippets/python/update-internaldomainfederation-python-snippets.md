---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.internal_domain_federation import InternalDomainFederation
from msgraph.generated.models.federated_idp_mfa_behavior import FederatedIdpMfaBehavior
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InternalDomainFederation(
	display_name = "Contoso name change",
	federated_idp_mfa_behavior = FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp,
)

result = await graph_client.domains.by_domain_id('domain-id').federation_configuration.by_internal_domain_federation_id('internalDomainFederation-id').patch(request_body)


```