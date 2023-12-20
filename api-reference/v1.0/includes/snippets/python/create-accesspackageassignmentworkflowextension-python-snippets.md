---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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