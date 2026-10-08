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
	display_name = "Arkose Sign-Up Protection",
	public_key = "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB",
	private_key = "19BBE628-7DEF-4E28-AB25-BF129C760B7E",
	client_sub_domain = "client-api",
	verify_sub_domain = "verify-api",
)

result = await graph_client.identity.risk_prevention.fraud_protection_providers.post(request_body)


```