---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("bf1f1963-05f6-4cba-903c-5892b4ce3bd7").assignments("db8e6b0b-dba4-4c69-81b2-9ba7313c0b7a").submissions("4bca096a-7de3-8675-5e86-2fa149923860")
	.reassign()
	.buildRequest()
	.post();

```