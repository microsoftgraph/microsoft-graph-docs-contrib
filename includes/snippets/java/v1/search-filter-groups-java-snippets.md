---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));
requestOptions.add(new QueryOption("$search", "\"displayName:OneVideo\""));

GroupCollectionPage groups = graphClient.groups()
	.buildRequest( requestOptions )
	.filter("mailEnabled eq true")
	.get();

```