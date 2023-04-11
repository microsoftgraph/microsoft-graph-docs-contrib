---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentAdditionalAccessCollectionPage additionalAccess = graphClient.identityGovernance().entitlementManagement().accessPackageAssignments()
	.additionalAccess(AccessPackageAssignmentAdditionalAccessParameterSet
		.newBuilder()
		.withAccessPackageId("2506aef1-3929-4d24-a61e-7c8b83d95e6f")
		.withIncompatibleAccessPackageId("d5d99728-8c0b-4ede-83d2-cf9b0e8dabfb")
		.build())
	.buildRequest()
	.expand("target")
	.get();

```