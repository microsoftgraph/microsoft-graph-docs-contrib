---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationClass educationClass = new EducationClass();
educationClass.setDescription("Health Level 1");
educationClass.setClassCode("Health 501");
educationClass.setDisplayName("Health 1");
educationClass.setExternalId("11019");
educationClass.setExternalName("Health Level 1");
educationClass.setExternalSource(EducationExternalSource.Sis);
educationClass.setMailNickname("fineartschool.net");
EducationClass result = graphClient.education().classes().post(educationClass);


```