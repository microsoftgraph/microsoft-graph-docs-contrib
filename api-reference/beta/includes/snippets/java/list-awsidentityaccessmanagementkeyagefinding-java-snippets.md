---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsIdentityAccessManagementKeyAgeFindingCollectionPage awsIdentityAccessManagementKeyAgeFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.awsIdentityAccessManagementKeyAgeFinding()
	.buildRequest()
	.get();

```