---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

query_params = AlertDefinitionsRequestBuilder.AlertDefinitionsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
)

request_configuration = AlertDefinitionsRequestBuilder.AlertDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.role_management_alerts.alert_definitions.get(request_configuration = request_configuration)


```