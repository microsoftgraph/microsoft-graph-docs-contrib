---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_task_extension import CustomTaskExtension
from msgraph.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph.generated.models.custom_extension_authentication_configuration import CustomExtensionAuthenticationConfiguration
from msgraph.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph.generated.models.custom_task_extension_callback_configuration import CustomTaskExtensionCallbackConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomTaskExtension(
	display_name = "Grant manager access to mailbox and OneDrive",
	description = "Grant manager access to mailbox and OneDrive",
	endpoint_configuration = LogicAppTriggerEndpointConfiguration(
		odata_type = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		subscription_id = "c500b67c-e9b7-4ad2-a90d-77d41385ae55",
		resource_group_name = "RG-LCM",
		logic_app_workflow_name = "ManagerAccess",
	),
	authentication_configuration = CustomExtensionAuthenticationConfiguration(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		additional_data = {
				"resource_id" : "542dc01a-0b5d-4edc-b3f9-5cfe6393f557",
		}
	),
	client_configuration = CustomExtensionClientConfiguration(
		odata_type = "#microsoft.graph.customExtensionClientConfiguration",
		timeout_in_milliseconds = 1000,
		additional_data = {
				"maximum_retries" : 1,
		}
	),
	callback_configuration = CustomTaskExtensionCallbackConfiguration(
		odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
		timeout_duration = "PT5M",
	),
)

result = await graph_client.identity_governance.lifecycle_workflows.custom_task_extensions.post(request_body)


```