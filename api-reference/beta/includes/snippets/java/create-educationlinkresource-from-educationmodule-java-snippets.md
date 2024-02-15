---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationLinkResource resource = new EducationLinkResource();
resource.setOdataType("#microsoft.graph.educationLinkResource");
resource.setDisplayName("Bing site");
resource.setLink("https://www.bing.com");
educationModuleResource.setResource(resource);
EducationModuleResource result = graphClient.education().classes().byEducationClassId("{educationClass-id}").modules().byEducationModuleId("{educationModule-id}").resources().post(educationModuleResource);


```