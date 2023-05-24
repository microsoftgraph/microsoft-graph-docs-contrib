---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("select", "emphasis,expand=webparts"));

VerticalSection verticalSection = graphClient.sites("{sitesId}").pages("{sitePageId}").canvasLayout().verticalSection()
	.buildRequest( requestOptions )
	.get();

```