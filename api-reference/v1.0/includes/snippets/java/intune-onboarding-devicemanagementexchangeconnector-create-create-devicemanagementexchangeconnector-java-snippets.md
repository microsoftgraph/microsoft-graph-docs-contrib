---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementExchangeConnector deviceManagementExchangeConnector = new DeviceManagementExchangeConnector();
deviceManagementExchangeConnector.lastSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:49.3205976+00:00");
deviceManagementExchangeConnector.status = DeviceManagementExchangeConnectorStatus.CONNECTION_PENDING;
deviceManagementExchangeConnector.primarySmtpAddress = "Primary Smtp Address value";
deviceManagementExchangeConnector.serverName = "Server Name value";
deviceManagementExchangeConnector.connectorServerName = "Connector Server Name value";
deviceManagementExchangeConnector.exchangeConnectorType = DeviceManagementExchangeConnectorType.HOSTED;
deviceManagementExchangeConnector.version = "Version value";
deviceManagementExchangeConnector.exchangeAlias = "Exchange Alias value";
deviceManagementExchangeConnector.exchangeOrganization = "Exchange Organization value";

graphClient.deviceManagement().exchangeConnectors()
	.buildRequest()
	.post(deviceManagementExchangeConnector);

```