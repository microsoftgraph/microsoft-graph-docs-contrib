---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.custom_callout_extension import CustomCalloutExtension
from msgraph_beta.generated.models.access_package_assignment_workflow_extension import AccessPackageAssignmentWorkflowExtension
from msgraph_beta.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph_beta.generated.models.azure_ad_pop_token_authentication import AzureAdPopTokenAuthentication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomCalloutExtension(
	additional_data = {
			"value" : {
					"@odata_type" : "#microsoft.graph.accessPackageAssignmentWorkflowExtension",
					"display_name" : "test_action_0127_email",
					"description" : "this is for graph testing only",
					"endpoint_configuration" : {
							"@odata_type" : "#microsoft.graph.logicAppTriggerEndpointConfiguration",
							"subscription_id" : "38ab2ccc-3747-4567-b36b-9478f5602f0d",
							"resource_group_name" : "test",
							"logic_app_workflow_name" : "elm-extension-email",
					},
					"authentication_configuration" : {
							"@odata_type" : "#microsoft.graph.azureAdPopTokenAuthentication",
					},
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_catalogs.by_access_package_catalog_id('accessPackageCatalog-id').access_package_custom_workflow_extensions.post(request_body)


```