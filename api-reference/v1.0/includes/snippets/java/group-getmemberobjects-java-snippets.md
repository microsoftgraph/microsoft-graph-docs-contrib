---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean securityEnabledOnly = false;

graphClient.groups("1132b215-826f-42a9-8cfe-1643d19d17fd")
	.getMemberObjects(DirectoryObjectGetMemberObjectsParameterSet
		.newBuilder()
		.withSecurityEnabledOnly(securityEnabledOnly)
		.build())
	.buildRequest()
	.post();

```