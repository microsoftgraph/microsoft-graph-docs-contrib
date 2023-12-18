---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackage accessPackage = graphClient.identityGovernance().entitlementManagement().accessPackages("{id}")
	.buildRequest()
	.expand("resourceRoleScopes($expand=role,scope)")
	.get();

```