---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AppRoleAssignment appRoleAssignment = graphClient.me().appRoleAssignments("Lo6gEKI-4EyAy9X91LBepo6Aq0Rt6QxBjWRl76txk8I")
	.buildRequest()
	.get();

```