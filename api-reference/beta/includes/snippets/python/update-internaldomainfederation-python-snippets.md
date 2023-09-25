---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = InternalDomainFederation(
	display_name = "Contoso name change",
	federated_idp_mfa_behavior = FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp,
)

result = await graph_client.domains.by_domain_id('domain-id').federation_configuration.by_federation_configuration_id('internalDomainFederation-id').patch(body = request_body)


```