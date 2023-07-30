---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.security().labels().retentionLabels("{retentionLabelId}").descriptors().categoryTemplate().subCategories("{subCategoryTemplateId}")
	.buildRequest()
	.delete();

```