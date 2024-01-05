---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsExternalSystemAccessRoleFindingCollectionPage awsExternalSystemAccessRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.awsExternalSystemAccessRoleFinding()
	.buildRequest()
	.get();

```