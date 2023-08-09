---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemReference parentReference = new ItemReference();
parentReference.path = "/drive/root:/Documents";

String name = "Copy of LargeFolder1";

graphClient.me().drive().items("{folder-item-id}")
	.copy(DriveItemCopyParameterSet
		.newBuilder()
		.withName(name)
		.withParentReference(parentReference)
		.build())
	.buildRequest()
	.post();

```