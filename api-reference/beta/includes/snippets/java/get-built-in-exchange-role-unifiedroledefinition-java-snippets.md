---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinition unifiedRoleDefinition = graphClient.roleManagement().exchange().roleDefinitions("7224da60-d8e2-4f45-9380-8e4fda64e133")
	.buildRequest()
	.get();

```