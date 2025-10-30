---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_phone_method_load_start_listener import OnPhoneMethodLoadStartListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_phone_method_load_start_external_users_auth_handler import OnPhoneMethodLoadStartExternalUsersAuthHandler
from msgraph_beta.generated.models.phone_options import PhoneOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnPhoneMethodLoadStartListener(
	odata_type = "#microsoft.graph.onPhoneMethodLoadStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				"3dfff01b-0afb-4a07-967f-d1ccbd81102a",
			],
		),
	),
	priority = 500,
	handler = OnPhoneMethodLoadStartExternalUsersAuthHandler(
		odata_type = "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",
		sms_options = PhoneOptions(
			include_additional_regions = [
			],
			exclude_regions = [
				1001,
				99,
				777,
			],
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```