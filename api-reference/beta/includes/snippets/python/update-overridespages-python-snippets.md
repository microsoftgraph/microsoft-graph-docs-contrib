---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = $valuePutRequestBody(
	additional_data = {
			"localized_strings" : [
				(
					element_type = "UxElement",
					element_id = None,
					string_id = "alert_message",
					override = True,
					value = "Are you sure that you want to cancel your selection?",
				),
			]
	}
)

await graph_client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').languages.by_language_id('userFlowLanguageConfiguration-id').override_pages.by_override_page_id('userFlowLanguagePage-id').content.put(body = request_body)


```