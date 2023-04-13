---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentTypeGetCompatibleHubContentTypesCollectionPage getCompatibleHubContentTypes = graphClient.sites("{siteId}").lists("{listId}").contentTypes()
	.getCompatibleHubContentTypes()
	.buildRequest()
	.get();

```