---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = InternalDomainFederation(
	display_name = "Contoso name change",
	federated_idp_mfa_behavior = FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp,
)

result = await graph_client.domains.by_domain_id('domain-id').federation_configuration.by_internal_domain_federation_id('internalDomainFederation-id').patch(request_body)


```