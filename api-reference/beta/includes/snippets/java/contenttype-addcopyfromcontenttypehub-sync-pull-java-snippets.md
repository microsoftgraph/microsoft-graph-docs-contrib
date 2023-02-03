---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String contentTypeId = "0x0101";

graphClient.sites("{siteId}").lists("{listId}").contentTypes()
	.addCopyFromContentTypeHub(ContentTypeAddCopyFromContentTypeHubParameterSet
		.newBuilder()
		.withContentTypeId(contentTypeId)
		.build())
	.buildRequest()
	.post();

```