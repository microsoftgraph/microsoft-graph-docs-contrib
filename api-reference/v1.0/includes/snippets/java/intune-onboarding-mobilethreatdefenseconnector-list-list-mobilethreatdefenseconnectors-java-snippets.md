---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileThreatDefenseConnectorCollectionPage mobileThreatDefenseConnectors = graphClient.deviceManagement().mobileThreatDefenseConnectors()
	.buildRequest()
	.get();

```