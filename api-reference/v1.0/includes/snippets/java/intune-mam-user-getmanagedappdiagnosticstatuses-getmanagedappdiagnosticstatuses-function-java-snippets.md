---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserGetManagedAppDiagnosticStatusesCollectionPage getManagedAppDiagnosticStatuses = graphClient.users("{usersId}")
	.getManagedAppDiagnosticStatuses()
	.buildRequest()
	.get();

```