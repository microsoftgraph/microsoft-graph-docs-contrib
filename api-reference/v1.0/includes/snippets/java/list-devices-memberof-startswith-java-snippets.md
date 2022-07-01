---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

GroupCollectionPage group = graphClient.devices("{id}").memberOf().microsoft.graph.group()
	.buildRequest( requestOptions )
	.filter("startswith(displayName, 'A')")
	.orderBy("displayName")
	.get();

```