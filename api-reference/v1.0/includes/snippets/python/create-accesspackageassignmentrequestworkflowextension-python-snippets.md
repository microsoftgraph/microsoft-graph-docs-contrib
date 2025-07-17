---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.access_package_assignment_request_workflow_extension import AccessPackageAssignmentRequestWorkflowExtension
from msgraph.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph.generated.models.azure_ad_pop_token_authentication import AzureAdPopTokenAuthentication
from msgraph.generated.models.custom_extension_callback_configuration import CustomExtensionCallbackConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageAssignmentRequestWorkflowExtension(
	odata_type = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
	display_name = "test_action_0124_email",
	description = "this is for graph testing only",
	endpoint_configuration = LogicAppTriggerEndpointConfiguration(
		odata_type = "#microsoft.graph.logicAppTriggerEndpointConfiguration",
		subscription_id = "38ab2ccc-3747-4567-b36b-9478f5602f0d",
		resource_group_name = "test",
		logic_app_workflow_name = "elm-extension-email",
	),
	authentication_configuration = AzureAdPopTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdPopTokenAuthentication",
	),
	callback_configuration = CustomExtensionCallbackConfiguration(
		odata_type = "microsoft.graph.customExtensionCallbackConfiguration",
		additional_data = {
				"duration_before_timeout" : "PT1H",
		}
	),
)

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').custom_workflow_extensions.post(request_body)


```