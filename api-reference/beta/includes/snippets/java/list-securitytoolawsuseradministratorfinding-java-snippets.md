---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsUserAdministratorFindingCollectionPage securityToolAwsUserAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.securityToolAwsUserAdministratorFinding()
	.buildRequest()
	.get();

```