---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.FilePlanReferenceTemplate filePlanReferenceTemplate = new com.microsoft.graph.beta.models.security.FilePlanReferenceTemplate();
filePlanReferenceTemplate.setOdataType("#microsoft.graph.security.filePlanReferenceTemplate");
filePlanReferenceTemplate.setDisplayName("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
filePlanReferenceTemplate.setCreatedBy(createdBy);
com.microsoft.graph.models.security.FilePlanReferenceTemplate result = graphClient.security().labels().filePlanReferences().post(filePlanReferenceTemplate);


```