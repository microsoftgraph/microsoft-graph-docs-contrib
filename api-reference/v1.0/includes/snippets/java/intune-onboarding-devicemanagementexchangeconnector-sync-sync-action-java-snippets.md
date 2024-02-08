---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.exchangeconnectors.item.sync.SyncPostRequestBody syncPostRequestBody = new com.microsoft.graph.devicemanagement.exchangeconnectors.item.sync.SyncPostRequestBody();
syncPostRequestBody.setSyncType(DeviceManagementExchangeConnectorSyncType.DeltaSync);
graphClient.deviceManagement().exchangeConnectors().byDeviceManagementExchangeConnectorId("{deviceManagementExchangeConnector-id}").sync().post(syncPostRequestBody);


```