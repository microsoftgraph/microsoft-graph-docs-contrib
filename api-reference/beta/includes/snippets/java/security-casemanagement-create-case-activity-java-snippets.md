---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.Comment activity = new com.microsoft.graph.beta.models.security.casemanagement.Comment();
activity.setOdataType("#microsoft.graph.security.caseManagement.comment");
activity.setMessage("This is a comment for the case.");
com.microsoft.graph.models.security.casemanagement.Activity result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").activities().post(activity);


```