---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.m365_capability_base import M365CapabilityBase
from msgraph_beta.generated.models.m365_capability_inbound_access import M365CapabilityInboundAccess
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = M365CapabilityBase(
	inbound_access = M365CapabilityInboundAccess(
		is_allowed = False,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.default.m365_capabilities.by_m365_capability_base_name('m365CapabilityBase-name').patch(request_body)


```