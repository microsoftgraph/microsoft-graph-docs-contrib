---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().exchange().roleAssignments("e664cde0-fbdf-4b1e-bcb2-d134ef32194d")
	.buildRequest()
	.delete();

```