---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InternalDomainFederation()
request_body.display_name = 'Contoso name change'

request_body.federatedidpmfabehavior(FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp('federatedidpmfabehavior.acceptifmfadonebyfederatedidp'))




result = await client.domains.by_domain_id('domain-id').federation_configuration.by_federation_configuration_id('internalDomainFederation-id').patch(request_body = request_body)


```