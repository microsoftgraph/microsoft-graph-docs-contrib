---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModule educationModule = new EducationModule();
educationModule.setDisplayName("Module 2");
educationModule.setDescription("Description for Module 2");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("languageTag", "en-GB");
educationModule.setAdditionalData(additionalData);
EducationModule result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().post(educationModule);


```