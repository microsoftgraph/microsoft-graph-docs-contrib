---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().cloudPC().roleDefinitions("b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff")
	.buildRequest()
	.delete();

```