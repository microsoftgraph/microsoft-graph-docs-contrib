---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identityGovernance.roleManagementAlerts.alerts.item.alertIncidents.alert_incidents_request_builder import AlertIncidentsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = AlertIncidentsRequestBuilder.AlertIncidentsRequestBuilderGetQueryParameters(
		top = 5,
)

request_configuration = AlertIncidentsRequestBuilder.AlertIncidentsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.role_management_alerts.alerts.by_unified_role_management_alert_id('unifiedRoleManagementAlert-id').alert_incidents.get(request_configuration = request_configuration)


```