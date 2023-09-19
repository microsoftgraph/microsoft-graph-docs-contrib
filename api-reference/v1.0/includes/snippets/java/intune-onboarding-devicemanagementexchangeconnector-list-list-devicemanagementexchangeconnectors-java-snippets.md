---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementExchangeConnectorCollectionPage exchangeConnectors = graphClient.deviceManagement().exchangeConnectors()
	.buildRequest()
	.get();

```