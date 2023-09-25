---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageCollectionWithReferencesPage incompatibleAccessPackages = graphClient.identityGovernance().entitlementManagement().accessPackages("73eb2497-3b88-4c0a-8bb3-68ba8162beff").incompatibleAccessPackages()
	.buildRequest()
	.get();

```