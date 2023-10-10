---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationLinkedAssignmentResource resource = new EducationLinkedAssignmentResource();
resource.displayName = "Existing_Assignment";
resource.url = "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b563da70-710e-4a9b-ba86-94a4d73e5d21";
educationModuleResource.resource = resource;

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules("74b318fa-e882-4dad-8e1c-dab091b12fe7").resources()
	.buildRequest()
	.post(educationModuleResource);

```