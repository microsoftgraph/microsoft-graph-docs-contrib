---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebPartCollectionPage webparts = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().horizontalSections("{horizontalSectionId}").columns("{horizontalSectionColumnId}").webparts()
	.buildRequest()
	.get();

```