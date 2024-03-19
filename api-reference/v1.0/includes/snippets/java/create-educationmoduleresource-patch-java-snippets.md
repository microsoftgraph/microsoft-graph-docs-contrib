---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationResource resource = new EducationResource();
resource.setDisplayName("New pptx file patched.pptx");
educationModuleResource.setResource(resource);
EducationModuleResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().byEducationModuleId("{educationModule-id}").resources().byEducationModuleResourceId("{educationModuleResource-id}").patch(educationModuleResource);


```