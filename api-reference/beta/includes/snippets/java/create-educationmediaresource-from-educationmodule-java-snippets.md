---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = new EducationModuleResource();
EducationMediaResource resource = new EducationMediaResource();
resource.displayName = "media-resource.PNG";
resource.fileUrl = "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3IYW2FOZYQNBELS7N4RRREIMVK";
educationModuleResource.resource = resource;

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules("74b318fa-e882-4dad-8e1c-dab091b12fe7").resources()
	.buildRequest()
	.post(educationModuleResource);

```