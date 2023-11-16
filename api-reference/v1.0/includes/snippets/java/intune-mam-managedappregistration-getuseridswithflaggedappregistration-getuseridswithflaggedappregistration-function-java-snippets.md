---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppRegistrationGetUserIdsWithFlaggedAppRegistrationCollectionPage getUserIdsWithFlaggedAppRegistration = graphClient.deviceAppManagement().managedAppRegistrations()
	.getUserIdsWithFlaggedAppRegistration()
	.buildRequest()
	.get();

```