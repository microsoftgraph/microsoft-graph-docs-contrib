---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsExternalSystemAccessRoleFinding awsExternalSystemAccessRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc1JvbGVGaW5kaW5nLDMwMDQx").graph.awsExternalSystemAccessRoleFinding()
	.buildRequest()
	.get();

```