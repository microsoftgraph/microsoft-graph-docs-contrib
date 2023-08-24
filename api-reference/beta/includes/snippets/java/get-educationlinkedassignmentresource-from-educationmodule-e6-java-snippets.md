---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationModuleResource educationModuleResource = graphClient.education().classes("cff47bf3-791b-4b0a-ad6b-92fa66917cc7").modules("72a3879f-af73-4179-8a0e-4cb29c0fa369").resources("c7a52867-11e9-4fb3-ae81-ce7d1fe0fd55")
	.buildRequest()
	.get();

```