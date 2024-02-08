---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests("{scheduledPermissionsRequestId}")
	.cancelAll()
	.buildRequest()
	.post();

```