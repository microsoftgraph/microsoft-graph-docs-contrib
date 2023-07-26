---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.sites("{sitesId}").pages("{sitePageId}").microsoft.graph.sitePage().webParts("{webPartId}")
	.buildRequest()
	.delete();

```