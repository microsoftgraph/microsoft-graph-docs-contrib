---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagementExchangeConnector()
request_body.@odata_type = '#microsoft.graph.deviceManagementExchangeConnector'

request_body.lastSyncDateTime = DateTime('2017-01-01T00:02:49.3205976-08:00')

request_body.status(DeviceManagementExchangeConnectorStatus.ConnectionPending('devicemanagementexchangeconnectorstatus.connectionpending'))

request_body.primary_smtp_address = 'Primary Smtp Address value'

request_body.server_name = 'Server Name value'

request_body.connector_server_name = 'Connector Server Name value'

request_body.exchangeconnectortype(DeviceManagementExchangeConnectorType.Hosted('devicemanagementexchangeconnectortype.hosted'))

request_body.version = 'Version value'

request_body.exchange_alias = 'Exchange Alias value'

request_body.exchange_organization = 'Exchange Organization value'




result = await client.device_management.exchange_connectors.by_exchange_connector_id('deviceManagementExchangeConnector-id').patch(request_body = request_body)


```