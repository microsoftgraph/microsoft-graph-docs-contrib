---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsRoleAdministratorFindingCollectionPage securityToolAwsRoleAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.securityToolAwsRoleAdministratorFinding()
	.buildRequest()
	.get();

```