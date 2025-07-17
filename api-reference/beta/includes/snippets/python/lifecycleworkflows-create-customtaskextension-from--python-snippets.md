---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_governance.custom_task_extension import CustomTaskExtension
from msgraph_beta.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph_beta.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication
from msgraph_beta.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph_beta.generated.models.identity_governance.custom_task_extension_callback_configuration import CustomTaskExtensionCallbackConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomTaskExtension(
	display_name = "Grant manager access to mailbox and OneDrive",
	description = "Grant manager access to mailbox and OneDrive",
	endpoint_configuration = LogicAppTriggerEndpointConfiguration(
		odata_type = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		subscription_id = "c500b67c-e9b7-4ad2-a90d-77d41385ae55",
		resource_group_name = "RG-LCM",
		logic_app_workflow_name = "ManagerAccess",
	),
	authentication_configuration = AzureAdTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		resource_id = "542dc01a-0b5d-4edc-b3f9-5cfe6393f557",
	),
	client_configuration = CustomExtensionClientConfiguration(
		odata_type = "#microsoft.graph.customExtensionClientConfiguration",
		maximum_retries = 1,
		timeout_in_milliseconds = 1000,
	),
	callback_configuration = CustomTaskExtensionCallbackConfiguration(
		odata_type = "#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration",
		timeout_duration = "PT5M",
	),
)

result = await graph_client.identity_governance.lifecycle_workflows.custom_task_extensions.post(request_body)


```