---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicyCollectionPage assignmentPolicies = graphClient.identityGovernance().entitlementManagement().assignmentPolicies()
	.buildRequest()
	.get();

```