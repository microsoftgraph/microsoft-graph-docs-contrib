---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.exchangeconnectors.item.sync.sync_post_request_body import SyncPostRequestBody
from msgraph.generated.models.device_management_exchange_connector_sync_type import DeviceManagementExchangeConnectorSyncType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SyncPostRequestBody(
	sync_type = DeviceManagementExchangeConnectorSyncType.DeltaSync,
)

await graph_client.device_management.exchange_connectors.by_device_management_exchange_connector_id('deviceManagementExchangeConnector-id').sync.post(request_body)


```