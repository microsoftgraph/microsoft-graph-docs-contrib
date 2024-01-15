---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEndpointRetrieveScopedPermissionsCollectionPage retrieveScopedPermissions = graphClient.deviceManagement().virtualEndpoint()
	.retrieveScopedPermissions()
	.buildRequest()
	.get();

```