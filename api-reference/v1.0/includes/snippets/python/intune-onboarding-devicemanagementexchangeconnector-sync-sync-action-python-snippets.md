---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.sync_post_request_body import SyncPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SyncPostRequestBody(
	sync_type = DeviceManagementExchangeConnectorSyncType.DeltaSync,
)

await graph_client.device_management.exchange_connectors.by_device_management_exchange_connector_id('deviceManagementExchangeConnector-id').sync.post(request_body)


```