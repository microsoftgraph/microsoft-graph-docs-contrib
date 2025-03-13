---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagementExchangeConnector deviceManagementExchangeConnector = new DeviceManagementExchangeConnector();
deviceManagementExchangeConnector.setOdataType("#microsoft.graph.deviceManagementExchangeConnector");
OffsetDateTime lastSyncDateTime = OffsetDateTime.parse("2017-01-01T00:02:49.3205976-08:00");
deviceManagementExchangeConnector.setLastSyncDateTime(lastSyncDateTime);
deviceManagementExchangeConnector.setStatus(DeviceManagementExchangeConnectorStatus.ConnectionPending);
deviceManagementExchangeConnector.setPrimarySmtpAddress("Primary Smtp Address value");
deviceManagementExchangeConnector.setServerName("Server Name value");
deviceManagementExchangeConnector.setConnectorServerName("Connector Server Name value");
deviceManagementExchangeConnector.setExchangeConnectorType(DeviceManagementExchangeConnectorType.Hosted);
deviceManagementExchangeConnector.setVersion("Version value");
deviceManagementExchangeConnector.setExchangeAlias("Exchange Alias value");
deviceManagementExchangeConnector.setExchangeOrganization("Exchange Organization value");
DeviceManagementExchangeConnector result = graphClient.deviceManagement().exchangeConnectors().post(deviceManagementExchangeConnector);


```