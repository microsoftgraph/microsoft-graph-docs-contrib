---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomCalloutExtension()
additional_data = [
'value' => request_body = Value()
		request_body.@odata_type = '#microsoft.graph.accessPackageAssignmentWorkflowExtension'

		request_body.display_name = 'test_action_0127_email'

		request_body.description = 'this is for graph testing only'

endpoint_configuration = EndpointConfiguration()
		endpoint_configuration.@odata_type = '#microsoft.graph.logicAppTriggerEndpointConfiguration'

		endpoint_configuration.subscription_id = '38ab2ccc-3747-4567-b36b-9478f5602f0d'

		endpoint_configuration.resource_group_name = 'test'

		endpoint_configuration.logic_app_workflow_name = 'elm-extension-email'


request_body.endpoint_configuration = endpoint_configuration
authentication_configuration = AuthenticationConfiguration()
		authentication_configuration.@odata_type = '#microsoft.graph.azureAdPopTokenAuthentication'


request_body.authentication_configuration = authentication_configuration

request_body.value = value

];
request_body.additional_data(additional_data)





result = await client.identity_governance.entitlement_management.acce_package_catalogs.by_acce_package_catalog_id('accessPackageCatalog-id').acces_package_custom_workflow_extensions.post(request_body = request_body)


```