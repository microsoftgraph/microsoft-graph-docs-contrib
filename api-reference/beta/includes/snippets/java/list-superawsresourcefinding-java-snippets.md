---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAwsResourceFindingCollectionPage superAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.superAwsResourceFinding()
	.buildRequest()
	.get();

```