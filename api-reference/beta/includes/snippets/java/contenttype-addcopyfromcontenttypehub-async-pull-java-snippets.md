---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String contentTypeId = "String";

graphClient.sites("{siteId}").lists("{listId}").contentTypes()
	.addCopyFromContentTypeHub(ContentTypeAddCopyFromContentTypeHubParameterSet
		.newBuilder()
		.withContentTypeId(contentTypeId)
		.build())
	.buildRequest()
	.post();

```