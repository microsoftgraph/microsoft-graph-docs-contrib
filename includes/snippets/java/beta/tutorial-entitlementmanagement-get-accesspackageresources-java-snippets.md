---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceCollectionPage accessPackageResources = graphClient.identityGovernance().entitlementManagement().accessPackageCatalogs("cec5d6ab-c75d-47c0-9c1c-92e89f66e384").accessPackageResources()
	.buildRequest()
	.filter("(displayName eq 'Marketing resources')")
	.get();

```