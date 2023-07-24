---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = AlertsRequestBuilder.AlertsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
		expand = ["alertDefinition","alertConfiguration","alertIncidents"],
)

request_configuration = AlertsRequestBuilder.AlertsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.identity_governance.role_management_alerts.alerts.get(request_configuration = request_configuration)


```