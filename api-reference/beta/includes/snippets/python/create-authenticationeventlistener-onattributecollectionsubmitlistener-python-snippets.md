---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_attribute_collection_submit_listener import OnAttributeCollectionSubmitListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_attribute_collection_submit_custom_extension_handler import OnAttributeCollectionSubmitCustomExtensionHandler
from msgraph_beta.generated.models.on_attribute_collection_submit_custom_extension import OnAttributeCollectionSubmitCustomExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnAttributeCollectionSubmitListener(
	odata_type = "#microsoft.graph.onAttributeCollectionSubmitListener",
	priority = 500,
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_all_applications = False,
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "0001111-aaaa-2222-bbbb-3333cccc4444",
				),
			],
		),
	),
	handler = OnAttributeCollectionSubmitCustomExtensionHandler(
		odata_type = "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
		custom_extension = OnAttributeCollectionSubmitCustomExtension(
			id = "66867d1f-7824-4f38-aad1-75da1ad09ee2",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```