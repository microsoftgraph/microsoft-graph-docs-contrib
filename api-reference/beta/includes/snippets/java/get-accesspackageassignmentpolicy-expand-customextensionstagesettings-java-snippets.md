---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies("4540a08f-8ab5-43f6-a923-015275799197")
	.buildRequest()
	.expand("customExtensionStageSettings($expand=customExtension)")
	.get();

```