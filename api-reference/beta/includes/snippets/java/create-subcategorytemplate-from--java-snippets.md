---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubCategoryTemplate subCategoryTemplate = new SubCategoryTemplate();
subCategoryTemplate.displayName = "String";
IdentitySet createdBy = new IdentitySet();
subCategoryTemplate.createdBy = createdBy;

graphClient.security().labels().retentionLabels("{retentionLabelId}").descriptors().categoryTemplate().subCategories()
	.buildRequest()
	.post(subCategoryTemplate);

```