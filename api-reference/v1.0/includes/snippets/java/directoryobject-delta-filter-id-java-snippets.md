---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObjectDeltaCollectionPage delta = graphClient.directoryObjects()
	.delta()
	.buildRequest()
	.filter("id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'")
	.get();

```