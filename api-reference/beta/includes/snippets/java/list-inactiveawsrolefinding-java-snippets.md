---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAwsRoleFindingCollectionPage inactiveAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.inactiveAwsRoleFinding()
	.buildRequest()
	.get();

```