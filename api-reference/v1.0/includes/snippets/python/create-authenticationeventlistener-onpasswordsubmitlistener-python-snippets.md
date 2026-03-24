---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.authentication_event_listener import AuthenticationEventListener
from msgraph.generated.models.authentication_conditions import AuthenticationConditions
from msgraph.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph.generated.models.authentication_condition_application import AuthenticationConditionApplication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationEventListener(
	odata_type = "#microsoft.graph.onPasswordSubmitListener",
	display_name = "JIT migration listener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "00011111-aaaa-2222-bbbb-3333cccc4444",
				),
			],
			additional_data = {
					"include_all_applications" : False,
			}
		),
	),
	additional_data = {
			"handler" : {
					"@odata_type" : "#microsoft.graph.onPasswordMigrationCustomExtensionHandler",
					"migration_property_id" : "extension_b7b1c57b532f40b8b5ed4b7a7ba67401_requiresMigration",
					"custom_extension" : {
							"id" : "6fc5012e-7665-43d6-9708-4370863f4e6e",
					},
			},
	}
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```