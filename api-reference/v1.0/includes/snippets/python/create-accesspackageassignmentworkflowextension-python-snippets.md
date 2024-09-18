---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_callout_extension import CustomCalloutExtension
from msgraph.generated.models.access_package_assignment_workflow_extension import AccessPackageAssignmentWorkflowExtension
from msgraph.generated.models.logic_app_trigger_endpoint_configuration import LogicAppTriggerEndpointConfiguration
from msgraph.generated.models.azure_ad_pop_token_authentication import AzureAdPopTokenAuthentication

graph_client = GraphServiceClient(credentials, scopes)

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

result = await graph_client.identity_governance.entitlement_management.catalogs.by_access_package_catalog_id('accessPackageCatalog-id').custom_workflow_extensions.post(request_body)


```