---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsResourceFindingCollectionPage secretInformationAccessAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.secretInformationAccessAwsResourceFinding()
	.buildRequest()
	.get();

```