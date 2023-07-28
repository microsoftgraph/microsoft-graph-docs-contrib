---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = UnifiedRoleManagementAlertConfigurationRequestBuilder.UnifiedRoleManagementAlertConfigurationRequestBuilderGetQueryParameters(
		expand = ["alertDefinition"],
)

request_configuration = UnifiedRoleManagementAlertConfigurationRequestBuilder.UnifiedRoleManagementAlertConfigurationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.role_management_alerts.alert_configurations.by_alert_configuration_id('unifiedRoleManagementAlertConfiguration-id').get(request_configuration = request_configuration)


```