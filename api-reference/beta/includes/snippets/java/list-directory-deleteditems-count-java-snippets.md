---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

GroupCollectionPage group = graphClient.directory().deletedItems().microsoft.graph.group()
	.buildRequest( requestOptions )
	.select("id,displayName,deletedDateTime")
	.orderBy("deletedDateTime asc")
	.get();

```