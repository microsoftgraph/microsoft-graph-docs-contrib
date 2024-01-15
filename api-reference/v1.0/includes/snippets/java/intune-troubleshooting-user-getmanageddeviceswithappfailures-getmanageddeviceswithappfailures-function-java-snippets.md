---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserGetManagedDevicesWithAppFailuresCollectionPage getManagedDevicesWithAppFailures = graphClient.users("{usersId}")
	.getManagedDevicesWithAppFailures()
	.buildRequest()
	.get();

```