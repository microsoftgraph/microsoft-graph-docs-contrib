---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceEnvironmentCollectionPage resourceEnvironments = graphClient.identityGovernance().entitlementManagement().resourceEnvironments()
	.buildRequest()
	.filter("originSystem eq 'SharePointOnline'")
	.get();

```