---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAwsRoleFindingCollectionPage superAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.superAwsRoleFinding()
	.buildRequest()
	.get();

```