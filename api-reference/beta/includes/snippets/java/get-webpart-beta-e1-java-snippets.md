---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebPart webPart = graphClient.sites("{sitesId}").pages("{sitePageId}").webParts("{webPartId}")
	.buildRequest()
	.get();

```