---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppRegistrationCollectionPage managedAppRegistrations = graphClient.deviceAppManagement().managedAppRegistrations()
	.buildRequest()
	.get();

```