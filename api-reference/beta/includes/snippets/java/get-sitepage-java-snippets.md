---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("select", "id,title"));
requestOptions.add(new QueryOption("expand", "webparts"));

SitePage sitePage = graphClient.sites("{sitesId}").pages("{sitePageId}")
	.buildRequest( requestOptions )
	.get();

```