---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentRequestWorkflowExtension()
request_body.@odata_type = '#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension'

request_body.display_name = 'test_action_0124_email'

request_body.description = 'this is for graph testing only'

endpoint_configuration = LogicAppTriggerEndpointConfiguration()
endpoint_configuration.@odata_type = '#microsoft.graph.logicAppTriggerEndpointConfiguration'

endpoint_configuration.subscription_id = '38ab2ccc-3747-4567-b36b-9478f5602f0d'

endpoint_configuration.resource_group_name = 'test'

endpoint_configuration.logic_app_workflow_name = 'elm-extension-email'


request_body.endpoint_configuration = endpoint_configuration
authentication_configuration = AzureAdPopTokenAuthentication()
authentication_configuration.@odata_type = '#microsoft.graph.azureAdPopTokenAuthentication'


request_body.authentication_configuration = authentication_configuration
callback_configuration = CustomExtensionCallbackConfiguration()
callback_configuration.@odata_type = 'microsoft.graph.customExtensionCallbackConfiguration'

additional_data = [
'duration_before_timeout' => 'PT1H', 
];
callback_configuration.additional_data(additional_data)



request_body.callback_configuration = callback_configuration



result = await client.identity_governance.entitlement_management.acce_package_catalogs.by_acce_package_catalog_id('accessPackageCatalog-id').acces_package_custom_workflow_extensions.post(request_body = request_body)


```