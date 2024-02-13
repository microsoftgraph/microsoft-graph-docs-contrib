---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management_exchange_connector import DeviceManagementExchangeConnector

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagementExchangeConnector(
	odata_type = "#microsoft.graph.deviceManagementExchangeConnector",
	last_sync_date_time = "2017-01-01T00:02:49.3205976-08:00",
	status = DeviceManagementExchangeConnectorStatus.ConnectionPending,
	primary_smtp_address = "Primary Smtp Address value",
	server_name = "Server Name value",
	connector_server_name = "Connector Server Name value",
	exchange_connector_type = DeviceManagementExchangeConnectorType.Hosted,
	version = "Version value",
	exchange_alias = "Exchange Alias value",
	exchange_organization = "Exchange Organization value",
)

result = await graph_client.device_management.exchange_connectors.post(request_body)


```