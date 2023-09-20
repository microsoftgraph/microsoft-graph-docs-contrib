---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = PartnersRequestBuilder.PartnersRequestBuilderGetQueryParameters(
		select = ["tenantId"],
		expand = ["identitySynchronization"],
)

request_configuration = PartnersRequestBuilder.PartnersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.policies.cro_tenant_acce_policy.partners.get(request_configuration = request_configuration)


```