---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.arkose_fraud_protection_provider import ArkoseFraudProtectionProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ArkoseFraudProtectionProvider(
	odata_type = "#microsoft.graph.arkoseFraudProtectionProvider",
	display_name = "Arkose Sign-Up Protection Updated",
)

result = await graph_client.identity.risk_prevention.fraud_protection_providers.by_fraud_protection_provider_id('fraudProtectionProvider-id').patch(request_body)


```