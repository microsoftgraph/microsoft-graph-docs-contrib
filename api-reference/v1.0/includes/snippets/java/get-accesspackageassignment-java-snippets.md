---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignment accessPackageAssignment = graphClient.identityGovernance().entitlementManagement().assignments("{accessPackageAssignmentId}")
	.buildRequest()
	.get();

```