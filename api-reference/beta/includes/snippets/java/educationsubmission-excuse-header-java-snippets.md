---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("28992cce-fac0-4950-a836-5a524ded8599").submissions("02859156-c3c7-876d-7a5c-915bf4f61380")
	.excuse()
	.buildRequest()
	.post();

```