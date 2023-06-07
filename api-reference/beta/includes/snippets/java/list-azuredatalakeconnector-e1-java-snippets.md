---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IndustryDataConnectorCollectionPage dataConnectors = graphClient.external().industryData().dataConnectors()
	.buildRequest()
	.get();

```