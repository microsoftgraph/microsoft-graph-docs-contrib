---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_attribute_collection_start_listener import OnAttributeCollectionStartListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_attribute_collection_start_custom_extension_handler import OnAttributeCollectionStartCustomExtensionHandler
from msgraph_beta.generated.models.on_attribute_collection_start_custom_extension import OnAttributeCollectionStartCustomExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnAttributeCollectionStartListener(
	odata_type = "#microsoft.graph.onAttributeCollectionStartListener",
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
	handler = OnAttributeCollectionStartCustomExtensionHandler(
		odata_type = "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
		custom_extension = OnAttributeCollectionStartCustomExtension(
			id = "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```