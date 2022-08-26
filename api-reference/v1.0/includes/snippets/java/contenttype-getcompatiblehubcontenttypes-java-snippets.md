---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContentTypeGetCompatibleHubContentTypesCollectionPage getCompatibleHubContentTypes = graphClient.sites("root").lists("Documents").contentTypes()
	.getCompatibleHubContentTypes()
	.buildRequest()
	.get();

```