---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsRoleAdministratorFinding securityToolAwsRoleAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nMw").microsoft.graph.securityToolAwsRoleAdministratorFinding()
	.buildRequest()
	.get();

```