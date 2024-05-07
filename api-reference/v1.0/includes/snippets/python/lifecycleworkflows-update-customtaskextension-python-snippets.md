---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_task_extension import CustomTaskExtension
from msgraph.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph.generated.models.azure_ad_pop_token_authentication import AzureAdPopTokenAuthentication
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
	authentication_configuration = AzureAdPopTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdPopTokenAuthentication",
	),
	client_configuration = CustomExtensionClientConfiguration(
		odata_type = "#microsoft.graph.customExtensionClientConfiguration",
		maximum_retries = 1,
		timeout_in_milliseconds = 1000,
	),
	callback_configuration = CustomTaskExtensionCallbackConfiguration(
		odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
		timeout_duration = "PT20M",
	),
)

result = await graph_client.identity_governance.lifecycle_workflows.custom_task_extensions.by_custom_task_extension_id('customTaskExtension-id').patch(request_body)


```