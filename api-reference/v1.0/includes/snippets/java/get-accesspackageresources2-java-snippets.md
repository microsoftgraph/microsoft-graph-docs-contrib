---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceCollectionPage resources = graphClient.identityGovernance().entitlementManagement().catalogs("{catalogId}").resources()
	.buildRequest()
	.filter("id eq '{resourceId}'")
	.expand("roles,scopes")
	.get();

```