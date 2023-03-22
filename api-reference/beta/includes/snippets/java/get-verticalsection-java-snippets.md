---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VerticalSection verticalSection = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().verticalSection()
	.buildRequest()
	.get();

```