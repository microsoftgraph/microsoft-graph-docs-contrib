---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModule educationModule = new EducationModule();
educationModule.displayName = "New_Module5 updated";
educationModule.description = "updated for description";

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules("ba8e4215-4fb2-4dba-abe7-a8f2585177d3")
	.buildRequest()
	.patch(educationModule);

```