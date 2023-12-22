---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsResourceAdministratorFindingCollectionPage securityToolAwsResourceAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.securityToolAwsResourceAdministratorFinding()
	.buildRequest()
	.get();

```