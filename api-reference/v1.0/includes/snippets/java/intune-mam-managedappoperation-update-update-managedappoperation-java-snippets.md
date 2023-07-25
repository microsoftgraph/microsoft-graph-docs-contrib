---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppOperation managedAppOperation = new ManagedAppOperation();
managedAppOperation.displayName = "Display Name value";
managedAppOperation.state = "State value";
managedAppOperation.version = "Version value";

graphClient.deviceAppManagement().managedAppRegistrations("{managedAppRegistrationId}").operations("{managedAppOperationId}")
	.buildRequest()
	.patch(managedAppOperation);

```