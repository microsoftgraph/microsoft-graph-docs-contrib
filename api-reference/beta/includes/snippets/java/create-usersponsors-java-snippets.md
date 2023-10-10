---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "{user-id}";

graphClient.users("d8ab5060-f636-4cff-ae97-d4687f5c83f3").sponsors().references()
	.buildRequest()
	.post(directoryObject);

```