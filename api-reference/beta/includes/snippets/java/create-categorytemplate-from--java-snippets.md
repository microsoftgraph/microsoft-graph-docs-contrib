---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.CategoryTemplate categoryTemplate = new com.microsoft.graph.beta.models.security.CategoryTemplate();
categoryTemplate.setOdataType("#microsoft.graph.security.categoryTemplate");
categoryTemplate.setDisplayName("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
categoryTemplate.setCreatedBy(createdBy);
com.microsoft.graph.models.security.CategoryTemplate result = graphClient.security().labels().categories().post(categoryTemplate);


```