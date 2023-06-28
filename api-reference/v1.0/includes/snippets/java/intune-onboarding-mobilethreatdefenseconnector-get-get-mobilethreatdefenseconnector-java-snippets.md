---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileThreatDefenseConnector mobileThreatDefenseConnector = graphClient.deviceManagement().mobileThreatDefenseConnectors("{mobileThreatDefenseConnectorId}")
	.buildRequest()
	.get();

```