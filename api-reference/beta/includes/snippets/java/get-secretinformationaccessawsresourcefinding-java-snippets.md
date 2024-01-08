---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsResourceFinding secretInformationAccessAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("YXdzU2VjcmV0SW5mb3JtYXRpb25BY2Nlc3NGaW5kaW5nOA").microsoft.graph.secretInformationAccessAwsResourceFinding()
	.buildRequest()
	.get();

```