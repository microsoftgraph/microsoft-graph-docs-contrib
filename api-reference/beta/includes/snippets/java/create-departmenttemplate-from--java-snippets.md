---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.DepartmentTemplate departmentTemplate = new com.microsoft.graph.beta.models.security.DepartmentTemplate();
departmentTemplate.setOdataType("#microsoft.graph.security.departmentTemplate");
departmentTemplate.setDisplayName("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
departmentTemplate.setCreatedBy(createdBy);
com.microsoft.graph.models.security.DepartmentTemplate result = graphClient.security().labels().departments().post(departmentTemplate);


```