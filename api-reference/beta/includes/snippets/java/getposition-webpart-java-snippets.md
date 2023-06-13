---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebPartPosition webPartPosition = graphClient.sites("{sitesId}").pages("{sitePageId}").webParts("{webPartId}")
	.getPositionOfWebPart()
	.buildRequest()
	.get();

```