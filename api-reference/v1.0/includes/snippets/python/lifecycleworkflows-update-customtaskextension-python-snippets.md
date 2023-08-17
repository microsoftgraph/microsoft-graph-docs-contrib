---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomTaskExtension()
request_body.display_name = 'Grant manager access to mailbox and OneDrive'

request_body.description = 'Grant manager access to mailbox and OneDrive'

endpoint_configuration = LogicAppTriggerEndpointConfiguration()
endpoint_configuration.@odata_type = '#microsoft.graph.logicAppTriggerEndpointConfiguration'

endpoint_configuration.subscription_id = 'c500b67c-e9b7-4ad2-a90d-77d41385ae55'

endpoint_configuration.resource_group_name = 'RG-LCM'

endpoint_configuration.logic_app_workflow_name = 'ManagerAccess'


request_body.endpoint_configuration = endpoint_configuration
authentication_configuration = AzureAdPopTokenAuthentication()
authentication_configuration.@odata_type = '#microsoft.graph.azureAdPopTokenAuthentication'


request_body.authentication_configuration = authentication_configuration
client_configuration = CustomExtensionClientConfiguration()
client_configuration.@odata_type = '#microsoft.graph.customExtensionClientConfiguration'

client_configuration.TimeoutInMilliseconds = 1000

additional_data = [
'maximum_retries' => 1,
];
client_configuration.additional_data(additional_data)



request_body.client_configuration = client_configuration
callback_configuration = CustomTaskExtensionCallbackConfiguration()
callback_configuration.@odata_type = '#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration'

callback_configuration.timeoutduration =  \DateInterval('PT20M')


request_body.callback_configuration = callback_configuration



result = await client.identity_governance.lifecycle_workflows.custom_task_extensions.by_custom_task_extension_id('customTaskExtension-id').patch(request_body = request_body)


```