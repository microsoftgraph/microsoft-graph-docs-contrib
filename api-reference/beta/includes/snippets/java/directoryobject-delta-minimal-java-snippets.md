---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "return=minimal"));

DirectoryObjectDeltaCollectionPage delta = graphClient.directoryObjects()
	.delta()
	.buildRequest( requestOptions )
	.filter("isof('microsoft.graph.user') or isof('microsoft.graph.group')")
	.select(",")
	.get();

```