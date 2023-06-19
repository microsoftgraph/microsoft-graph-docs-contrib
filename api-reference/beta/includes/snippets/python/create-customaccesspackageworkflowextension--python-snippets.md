---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomAccessPackageWorkflowExtension()
request_body.display_name = 'test_action_0124'

request_body.description = 'this is for graph testing only'

endpoint_configuration = CustomExtensionEndpointConfiguration()
endpoint_configuration.@odata_type = '#microsoft.graph.logicAppTriggerEndpointConfiguration'

additional_data = [
'subscription_id' => '38ab2ccc-3747-4567-b36b-9478f5602f0d', 
'resource_group_name' => 'EMLogicApp', 
'logic_app_workflow_name' => 'customextension_test', 
];
endpoint_configuration.additional_data(additional_data)



request_body.endpoint_configuration = endpoint_configuration
authentication_configuration = CustomExtensionAuthenticationConfiguration()
authentication_configuration.@odata_type = '#microsoft.graph.azureAdTokenAuthentication'

additional_data = [
'resource_id' => 'f604bd15-f785-4309-ad7c-6fad18ddb6cb', 
];
authentication_configuration.additional_data(additional_data)



request_body.authentication_configuration = authentication_configuration



result = await client.identity_governance.entitlement_management.acce_package_catalogs.by_acce_package_catalog_id('accessPackageCatalog-id').custom_acces_package_workflow_extensions.post(request_body = request_body)


```