---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppOperationCollectionPage operations = graphClient.deviceAppManagement().managedAppRegistrations("{managedAppRegistrationId}").operations()
	.buildRequest()
	.get();

```