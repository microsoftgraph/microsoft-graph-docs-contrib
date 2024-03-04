---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationClass educationClass = new EducationClass();
educationClass.setOdataType("#microsoft.graph.educationClass");
educationClass.setDisplayName("String");
educationClass.setMailNickname("String");
educationClass.setDescription("String");
IdentitySet createdBy = new IdentitySet();
createdBy.setOdataType("microsoft.graph.identitySet");
educationClass.setCreatedBy(createdBy);
educationClass.setClassCode("String");
educationClass.setExternalName("String");
educationClass.setExternalId("String");
educationClass.setExternalSource(EducationExternalSource.Sis);
educationClass.setExternalSourceDetail("String");
educationClass.setGrade("String");
EducationTerm term = new EducationTerm();
term.setOdataType("microsoft.graph.educationTerm");
educationClass.setTerm(term);
EducationClass result = graphClient.education().classes().post(educationClass);


```