---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.threat_intelligence_policy import ThreatIntelligencePolicy
from msgraph_beta.generated.models.networkaccess.threat_intelligence_policy_settings import ThreatIntelligencePolicySettings
from msgraph_beta.generated.models.threat_intelligence_action import ThreatIntelligenceAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ThreatIntelligencePolicy(
	odata_type = "#microsoft.graph.networkaccess.threatIntelligencePolicy",
	id = "a8352c78-90c6-4edd-aaca-9dc4292e7750",
	name = "Threat Intel Policy",
	description = "",
	version = "1.0.0",
	last_modified_date_time = "2025-06-18T17:34:25.8207682Z",
	settings = ThreatIntelligencePolicySettings(
		default_action = ThreatIntelligenceAction.Allow,
	),
)

result = await graph_client.network_access.threat_intelligence_policies.by_threat_intelligence_policy_id('threatIntelligencePolicy-id').patch(request_body)


```