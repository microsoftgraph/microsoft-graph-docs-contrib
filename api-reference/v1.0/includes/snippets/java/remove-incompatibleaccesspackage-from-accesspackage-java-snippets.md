---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackages("73eb2497-3b88-4c0a-8bb3-68ba8162beff").incompatibleAccessPackages("c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2").reference()
	.buildRequest()
	.delete();

```