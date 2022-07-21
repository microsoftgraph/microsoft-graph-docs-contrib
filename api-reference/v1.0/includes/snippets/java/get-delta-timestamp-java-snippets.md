---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("token", "2021-09-29T20:00:00Z"));

DriveItemDeltaCollectionPage delta = graphClient.me().drive().root()
	.delta()
	.buildRequest( requestOptions )
	.get();

```