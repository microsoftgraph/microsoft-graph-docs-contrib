---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModule educationModule = new EducationModule();
educationModule.displayName = "Module 2";
educationModule.description = "Description for Module 2";

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules()
	.buildRequest()
	.post(educationModule);

```