---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_flare_web_application_firewall_provider import CloudFlareWebApplicationFirewallProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CloudFlareWebApplicationFirewallProvider(
	odata_type = "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
	display_name = "String",
)

result = await graph_client.identity.risk_prevention.web_application_firewall_providers.by_web_application_firewall_provider_id('webApplicationFirewallProvider-id').patch(request_body)


```