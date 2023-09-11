---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String catalogId = "3301434b-99bd-46be-923b-d762c30c8e8b";

graphClient.identityGovernance().entitlementManagement().accessPackages("3089f957-4bfe-405d-96c0-9a7ef30c01d6")
	.moveToCatalog(AccessPackageMoveToCatalogParameterSet
		.newBuilder()
		.withCatalogId(catalogId)
		.build())
	.buildRequest()
	.post();

```