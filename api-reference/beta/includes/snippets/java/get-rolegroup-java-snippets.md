---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleGroup roleGroup = graphClient.external().industryData().roleGroups("students")
	.buildRequest()
	.get();

```