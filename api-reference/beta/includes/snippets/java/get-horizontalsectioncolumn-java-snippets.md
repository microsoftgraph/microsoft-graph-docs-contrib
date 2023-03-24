---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HorizontalSectionColumn horizontalSectionColumn = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().horizontalSections("{horizontalSectionId}").columns("{horizontalSectionColumnId}")
	.buildRequest()
	.get();

```