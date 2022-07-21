---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = graphClient.directory().administrativeUnits("c5729e7c-988e-417b-b287-14f5bd4711d8").members("7c06cd31-7c30-4f3b-a5c3-444cd8dd63ac")
	.buildRequest()
	.get();

```