---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("0bcb37af-3676-47ef-ae93-8de22ce5ff1d").gradingCategory().reference()
	.buildRequest()
	.delete();

```