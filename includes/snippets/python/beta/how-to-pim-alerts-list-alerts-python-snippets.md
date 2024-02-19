---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.roleManagementAlerts.alerts.alerts_request_builder import AlertsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AlertsRequestBuilder.AlertsRequestBuilderGetQueryParameters(
		filter = "scopeId eq '/' and scopeType eq 'DirectoryRole'",
)

request_configuration = AlertsRequestBuilder.AlertsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.role_management_alerts.alerts.get(request_configuration = request_configuration)


```