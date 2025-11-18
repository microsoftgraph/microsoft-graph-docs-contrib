---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.akamai_web_application_firewall_provider import AkamaiWebApplicationFirewallProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AkamaiWebApplicationFirewallProvider(
	odata_type = "#microsoft.graph.akamaiWebApplicationFirewallProvider",
	display_name = "Akamai Provider Example",
	host_prefix = "akab-exampleprefix",
	client_secret = "akamai_example_secret_123",
	client_token = "akamai_example_token_456",
	access_token = "akamai_example_token_789",
)

result = await graph_client.identity.risk_prevention.web_application_firewall_providers.post(request_body)


```