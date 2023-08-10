---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AlertConfigurationsRequestBuilder.AlertConfigurationsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
		expand = ["alertDefinition"],
)

request_configuration = AlertConfigurationsRequestBuilder.AlertConfigurationsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.role_management_alerts.alert_configurations.get(request_configuration = request_configuration)


```