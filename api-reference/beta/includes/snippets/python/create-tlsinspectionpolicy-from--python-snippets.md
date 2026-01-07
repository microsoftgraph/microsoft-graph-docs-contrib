---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.tls_inspection_policy import TlsInspectionPolicy
from msgraph_beta.generated.models.networkaccess.tls_inspection_policy_settings import TlsInspectionPolicySettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TlsInspectionPolicy(
	name = "Default TLS Inspection Policy",
	description = "Policy for inspecting TLS traffic",
	settings = TlsInspectionPolicySettings(
		additional_data = {
				"default_action" : "bypass",
		}
	),
)

result = await graph_client.network_access.tls_inspection_policies.post(request_body)


```