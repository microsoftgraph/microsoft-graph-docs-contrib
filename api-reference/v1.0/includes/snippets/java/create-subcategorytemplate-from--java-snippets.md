---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.SubcategoryTemplate subcategoryTemplate = new com.microsoft.graph.models.security.SubcategoryTemplate();
subcategoryTemplate.setOdataType("#microsoft.graph.security.subCategoryTemplate");
subcategoryTemplate.setDisplayName("Vendor Invoice");
com.microsoft.graph.models.security.SubcategoryTemplate result = graphClient.security().labels().categories().byCategoryTemplateId("{categoryTemplate-id}").subcategories().post(subcategoryTemplate);


```