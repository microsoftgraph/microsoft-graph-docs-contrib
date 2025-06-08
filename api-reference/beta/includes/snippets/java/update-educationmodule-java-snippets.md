---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModule educationModule = new EducationModule();
educationModule.setDisplayName("New_Module5 updated");
educationModule.setDescription("updated for description");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("languageTag", "en-GB");
educationModule.setAdditionalData(additionalData);
EducationModule result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().byEducationModuleId("{educationModule-id}").patch(educationModule);


```