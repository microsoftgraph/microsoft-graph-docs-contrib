---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.threat_intelligence_policy_link import ThreatIntelligencePolicyLink
from msgraph_beta.generated.models.status import Status
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ThreatIntelligencePolicyLink(
	odata_type = "#microsoft.graph.networkaccess.threatIntelligencePolicyLink",
	state = Status.Enabled,
	version = "String",
)

result = await graph_client.network_access.filtering_profiles.by_filtering_profile_id('filteringProfile-id').policies.by_policy_link_id('policyLink-id').patch(request_body)


```