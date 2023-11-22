---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAwsResourceFindingCollectionPage inactiveAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.inactiveAwsResourceFinding()
	.buildRequest()
	.get();

```