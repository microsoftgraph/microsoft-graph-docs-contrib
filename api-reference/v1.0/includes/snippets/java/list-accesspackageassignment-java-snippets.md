---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentCollectionPage assignments = graphClient.identityGovernance().entitlementManagement().assignments()
	.buildRequest()
	.get();

```