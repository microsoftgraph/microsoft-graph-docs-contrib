---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Community community = graphClient.employeeExperience().communities("eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0")
	.buildRequest()
	.get();

```