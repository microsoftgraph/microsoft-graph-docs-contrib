---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceAppManagement().managedAppRegistrations("{managedAppRegistrationId}").operations("{managedAppOperationId}")
	.buildRequest()
	.delete();

```