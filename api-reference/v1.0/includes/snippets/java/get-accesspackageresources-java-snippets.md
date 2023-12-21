---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceCollectionPage resources = graphClient.identityGovernance().entitlementManagement().catalogs("{id}").resources()
	.buildRequest()
	.expand("scopes")
	.get();

```