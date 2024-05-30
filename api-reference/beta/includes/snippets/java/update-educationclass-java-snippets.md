---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationClass educationClass = new EducationClass();
educationClass.setDescription("History - World History 1");
educationClass.setDisplayName("World History Level 1");
EducationClass result = graphClient.education().classes().byEducationClassId("{educationClass-id}").patch(educationClass);


```