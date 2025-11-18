---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.human_security_fraud_protection_provider import HumanSecurityFraudProtectionProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = HumanSecurityFraudProtectionProvider(
	odata_type = "#microsoft.graph.humanSecurityFraudProtectionProvider",
	display_name = "HUMAN Security Sign-Up Protection",
	app_id = "XXyy1XXXy",
	server_token = "xxYYxxXXX1",
)

result = await graph_client.identity.risk_prevention.fraud_protection_providers.post(request_body)


```