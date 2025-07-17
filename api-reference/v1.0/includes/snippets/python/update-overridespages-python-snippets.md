---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.b2xuserflows.item.languages.item.overridespages.item.value.$value_put_request_body import $valuePutRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = $valuePutRequestBody(
	additional_data = {
			"localized_strings" : [
				{
						"element_type" : "UxElement",
						"element_id" : None,
						"string_id" : "alert_message",
						"override" : True,
						"value" : "Are you sure that you want to cancel entering your information?",
				},
			],
	}
)

await graph_client.identity.b2x_user_flows.by_b2x_identity_user_flow_id('b2xIdentityUserFlow-id').languages.by_user_flow_language_configuration_id('userFlowLanguageConfiguration-id').overrides_pages.by_user_flow_language_page_id('userFlowLanguagePage-id').content.put(request_body)


```