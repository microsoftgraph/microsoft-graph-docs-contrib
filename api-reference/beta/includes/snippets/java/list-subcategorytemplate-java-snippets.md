---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubCategoryTemplateCollectionPage subCategories = graphClient.security().labels().retentionLabels("{retentionLabelId}").descriptors().categoryTemplate().subCategories()
	.buildRequest()
	.get();

```