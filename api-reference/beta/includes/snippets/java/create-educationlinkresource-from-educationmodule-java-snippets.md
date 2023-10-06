---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationLinkResource resource = new EducationLinkResource();
resource.displayName = "Bing site";
resource.link = "https://www.bing.com";
educationModuleResource.resource = resource;

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules("74b318fa-e882-4dad-8e1c-dab091b12fe7").resources()
	.buildRequest()
	.post(educationModuleResource);

```