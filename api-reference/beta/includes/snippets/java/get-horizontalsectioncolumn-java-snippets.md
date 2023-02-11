---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("select", "id,expand=webparts"));

HorizontalSectionColumn horizontalSectionColumn = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().horizontalSections("{horizontalSectionId}").columns("{horizontalSectionColumnId}")
	.buildRequest( requestOptions )
	.get();

```