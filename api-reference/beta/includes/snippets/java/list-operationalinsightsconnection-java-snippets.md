---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OperationalInsightsConnectionCollectionPage operationalInsightsConnection = graphClient.admin().windows().updates().resourceConnections().microsoft.graph.windowsUpdates.operationalInsightsConnection()
	.buildRequest()
	.get();

```