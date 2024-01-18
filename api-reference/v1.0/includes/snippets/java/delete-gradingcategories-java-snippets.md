---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("c2eeaaf2-766c-4b90-9a17-61625bc5a47d").gradingCategory().reference()
	.buildRequest()
	.delete();

```