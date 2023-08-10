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
authentication_configuration = AzureAdTokenAuthentication()
authentication_configuration.@odata_type = '#microsoft.graph.azureAdTokenAuthentication'

authentication_configuration.resource_id = '542dc01a-0b5d-4edc-b3f9-5cfe6393f557'


request_body.authentication_configuration = authentication_configuration
client_configuration = CustomExtensionClientConfiguration()
client_configuration.@odata_type = '#microsoft.graph.customExtensionClientConfiguration'

client_configuration.MaximumRetries = 1

client_configuration.TimeoutInMilliseconds = 1000


request_body.client_configuration = client_configuration
callback_configuration = CustomTaskExtensionCallbackConfiguration()
callback_configuration.@odata_type = '#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration'

callback_configuration.timeoutduration =  \DateInterval('PT5M')


request_body.callback_configuration = callback_configuration



result = await client.identity_governance.lifecycle_workflows.custom_task_extensions.post(request_body = request_body)


```