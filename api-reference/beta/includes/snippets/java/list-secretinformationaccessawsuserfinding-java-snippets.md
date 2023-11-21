---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsUserFindingCollectionPage secretInformationAccessAwsUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.secretInformationAccessAwsUserFinding()
	.buildRequest()
	.get();

```