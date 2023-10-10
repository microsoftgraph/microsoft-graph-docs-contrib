---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageResourceRoleCollectionPage resourceRoles = graphClient.identityGovernance().entitlementManagement().catalogs("15d889df-3eb8-4e9b-bfb4-b1908849aec4").resourceRoles()
	.buildRequest()
	.filter("(originSystem eq 'AadGroup' and resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')")
	.expand("resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')")
	.get();

```