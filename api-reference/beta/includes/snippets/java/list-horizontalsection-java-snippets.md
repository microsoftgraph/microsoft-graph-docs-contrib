---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content horizontalSections = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().horizontalSections()
	.buildRequest()
	.get();

```