---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleCollectionPage resourceRoles = graphClient.identityGovernance().entitlementManagement().catalogs("29db1374-74cc-485d-b21e-506e08b836a5").resourceRoles()
	.buildRequest()
	.filter("(originSystem eq 'SharePointOnline' and resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')")
	.expand("resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')")
	.get();

```