---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.FilePlanReferenceTemplate filePlanReferenceTemplate = new com.microsoft.graph.models.security.FilePlanReferenceTemplate();
filePlanReferenceTemplate.setOdataType("#microsoft.graph.security.filePlanReferenceTemplate");
filePlanReferenceTemplate.setDisplayName("FIN 01-02-001");
com.microsoft.graph.models.security.FilePlanReferenceTemplate result = graphClient.security().labels().filePlanReferences().post(filePlanReferenceTemplate);


```