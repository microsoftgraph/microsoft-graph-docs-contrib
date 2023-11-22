---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsExternalSystemAccessFindingCollectionPage awsExternalSystemAccessFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.awsExternalSystemAccessFinding()
	.buildRequest()
	.get();

```