---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModule educationModule = graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").modules("72a3879f-af73-4179-8a0e-4cb29c0fa369")
	.buildRequest()
	.get();

```