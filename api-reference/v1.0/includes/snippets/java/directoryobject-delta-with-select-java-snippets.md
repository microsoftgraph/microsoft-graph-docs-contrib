---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectDeltaCollectionPage delta = graphClient.directoryObjects()
	.delta()
	.buildRequest()
	.filter("isof('microsoft.graph.user') or isof('microsoft.graph.group')")
	.select(",")
	.get();

```