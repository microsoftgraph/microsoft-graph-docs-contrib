---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsRoleFindingCollectionPage secretInformationAccessAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.secretInformationAccessAwsRoleFinding()
	.buildRequest()
	.get();

```