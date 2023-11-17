---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("token", "1230919asd190410jlka"));

SiteDeltaCollectionPage delta = graphClient.sites()
	.delta()
	.buildRequest( requestOptions )
	.get();

```