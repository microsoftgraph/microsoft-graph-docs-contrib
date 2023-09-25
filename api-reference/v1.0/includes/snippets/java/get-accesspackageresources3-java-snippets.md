---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceCollectionPage resources = graphClient.identityGovernance().entitlementManagement().catalogs("{catalogId}").resources()
	.buildRequest()
	.filter("originId eq '0282e19d-bf41-435d-92a4-99bab93af305'")
	.expand("roles,scopes")
	.get();

```