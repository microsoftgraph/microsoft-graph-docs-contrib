---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsServerlessFunctionAdministratorFindingCollectionPage securityToolAwsServerlessFunctionAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding()
	.buildRequest()
	.get();

```