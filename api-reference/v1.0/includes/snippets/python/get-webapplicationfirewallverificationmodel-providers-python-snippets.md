---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.risk_prevention.web_application_firewall_verifications.item.web_application_firewall_verification_model_item_request_builder import WebApplicationFirewallVerificationModelItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = WebApplicationFirewallVerificationModelItemRequestBuilder.WebApplicationFirewallVerificationModelItemRequestBuilderGetQueryParameters(
		expand = ["provider"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity.risk_prevention.web_application_firewall_verifications.by_web_application_firewall_verification_model_id('webApplicationFirewallVerificationModel-id').get(request_configuration = request_configuration)


```