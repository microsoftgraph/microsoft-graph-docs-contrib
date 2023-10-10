---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceSpecificPermissionGrantCollectionPage permissionGrants = graphClient.users("2f39ffba-51ca-4d2d-a66f-a020a83ce208").permissionGrants()
	.buildRequest()
	.get();

```