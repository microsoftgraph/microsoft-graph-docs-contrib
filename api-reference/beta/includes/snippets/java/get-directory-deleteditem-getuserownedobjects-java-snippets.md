---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String userId = "55ac777c-109e-4022-b58c-470c8fcb6892";

String type = "Group";

graphClient.directory().deletedItems()
	.getUserOwnedObjects(DirectoryObjectGetUserOwnedObjectsParameterSet
		.newBuilder()
		.withUserId(userId)
		.withType(type)
		.build())
	.buildRequest()
	.post();

```