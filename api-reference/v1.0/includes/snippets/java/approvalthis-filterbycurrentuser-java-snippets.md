---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApprovalFilterByCurrentUserCollectionPage filterByCurrentUser = graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentApprovals()
	.filterByCurrentUser(ApprovalFilterByCurrentUserParameterSet
		.newBuilder()
		.withOn('approver')
		.build())
	.buildRequest()
	.get();

```