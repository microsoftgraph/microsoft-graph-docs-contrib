---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsExternalSystemAccessFinding awsExternalSystemAccessFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE").microsoft.graph.awsExternalSystemAccessFinding()
	.buildRequest()
	.get();

```