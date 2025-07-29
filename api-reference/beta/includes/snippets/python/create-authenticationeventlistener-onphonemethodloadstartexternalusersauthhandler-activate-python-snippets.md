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
	odata_type = "#microsoft.graph.onPhoneMethodLoadStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				"3dfff01b-0afb-4a07-967f-d1ccbd81102a",
			],
		),
	),
	additional_data = {
			"priority" : 500,
			"handler" : {
					"@odata_type" : "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
					"sms_options" : {
							"include_additional_regions" : [
								222,
								998,
							],
							"exclude_regions" : [
							],
					},
			},
	}
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```