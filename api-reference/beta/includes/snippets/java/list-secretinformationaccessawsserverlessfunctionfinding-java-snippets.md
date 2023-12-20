---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsServerlessFunctionFindingCollectionPage secretInformationAccessAwsServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding()
	.buildRequest()
	.get();

```