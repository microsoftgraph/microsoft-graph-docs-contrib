---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AlertDefinitionsRequestBuilder.AlertDefinitionsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
)

request_configuration = AlertDefinitionsRequestBuilder.AlertDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.role_management_alerts.alert_definitions.get(request_configuration = request_configuration)


```