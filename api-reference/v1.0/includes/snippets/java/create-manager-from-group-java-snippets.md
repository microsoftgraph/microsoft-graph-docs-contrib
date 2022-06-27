---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DirectoryObject directoryObject = new DirectoryObject();
directoryObject.id = "6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0";

graphClient.users("10f17b99-784c-4526-8747-aec8a3159d6a").manager().reference()
	.buildRequest()
	.put(directoryObject);

```