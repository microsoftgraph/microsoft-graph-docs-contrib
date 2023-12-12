---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = graphClient.education().classes("cff47bf3-791b-4b0a-ad6b-92fa66917cc7").modules("72a3879f-af73-4179-8a0e-4cb29c0fa369").resources("3b0198d2-590b-497f-ada6-35e2ba841879")
	.buildRequest()
	.get();

```