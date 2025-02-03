---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.education.classes.item.assignments.item.setupresourcesfolder.SetUpResourcesFolderPostRequestBody setUpResourcesFolderPostRequestBody = new com.microsoft.graph.education.classes.item.assignments.item.setupresourcesfolder.SetUpResourcesFolderPostRequestBody();
var result = graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").setUpResourcesFolder().post(setUpResourcesFolderPostRequestBody);


```