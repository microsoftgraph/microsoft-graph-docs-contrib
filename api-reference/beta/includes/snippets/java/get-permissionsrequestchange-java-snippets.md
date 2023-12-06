---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionsRequestChange permissionsRequestChange = graphClient.identityGovernance().permissionsManagement().permissionsRequestChanges("00000000-0000-0000-0000-000000000001")
	.buildRequest()
	.get();

```