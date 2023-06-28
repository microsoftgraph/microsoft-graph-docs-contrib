---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceManagementExchangeConnector
{
	OdataType = "#microsoft.graph.deviceManagementExchangeConnector",
	LastSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:02:49.3205976-08:00"),
	Status = DeviceManagementExchangeConnectorStatus.ConnectionPending,
	PrimarySmtpAddress = "Primary Smtp Address value",
	ServerName = "Server Name value",
	ConnectorServerName = "Connector Server Name value",
	ExchangeConnectorType = DeviceManagementExchangeConnectorType.Hosted,
	Version = "Version value",
	ExchangeAlias = "Exchange Alias value",
	ExchangeOrganization = "Exchange Organization value",
};
var result = await graphClient.DeviceManagement.ExchangeConnectors["{deviceManagementExchangeConnector-id}"].PatchAsync(requestBody);


```