---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

GroupCollectionPage groups = graphClient.groups()
	.buildRequest( requestOptions )
	.filter("startswith(displayName, 'a')")
	.orderBy("displayName")
	.top(1)
	.get();

```