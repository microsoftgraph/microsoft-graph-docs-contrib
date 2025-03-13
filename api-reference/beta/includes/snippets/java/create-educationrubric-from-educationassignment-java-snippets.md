---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceUpdate referenceUpdate = new com.microsoft.graph.beta.models.ReferenceUpdate();
referenceUpdate.setOdataId("https://graph.microsoft.com/v1.0/education/me/rubrics/{id}");
graphClient.education().classes().byEducationClassId("{educationClass-id}").assignments().byEducationAssignmentId("{educationAssignment-id}").rubric().ref().put(referenceUpdate);


```