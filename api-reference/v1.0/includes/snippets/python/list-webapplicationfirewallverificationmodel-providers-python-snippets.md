---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.risk_prevention.web_application_firewall_verifications.web_application_firewall_verifications_request_builder import WebApplicationFirewallVerificationsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = WebApplicationFirewallVerificationsRequestBuilder.WebApplicationFirewallVerificationsRequestBuilderGetQueryParameters(
		expand = ["provider"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.risk_prevention.web_application_firewall_verifications.get(request_configuration = request_configuration)


```