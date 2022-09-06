---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("b07edbef-7420-4b3d-8f7c-d599cf21e069").assignments("1e5222bd-b7d2-4d64-8a22-74b722ce2fc6").submissions("803fb5dd-3553-455f-3d94-f79fb54a1003")
	.setUpResourcesFolder()
	.buildRequest()
	.post();

```