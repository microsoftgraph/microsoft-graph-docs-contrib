---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.riskprevention.webapplicationfirewallproviders.item.verify.verify_post_request_body import VerifyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifyPostRequestBody(
	host_name = "www.contoso.com",
)

result = await graph_client.identity.risk_prevention.web_application_firewall_providers.by_web_application_firewall_provider_id('webApplicationFirewallProvider-id').verify.post(request_body)


```