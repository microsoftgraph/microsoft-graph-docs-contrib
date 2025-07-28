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
	name = "Malicious Domains Policy",
	description = "Policy to block traffic to known malicious domains based on threat intelligence",
	version = "1.0",
	settings = ThreatIntelligencePolicySettings(
		odata_type = "microsoft.graph.networkaccess.threatIntelligencePolicySettings",
		default_action = ThreatIntelligenceAction.Block,
	),
)

result = await graph_client.network_access.threat_intelligence_policies.post(request_body)


```