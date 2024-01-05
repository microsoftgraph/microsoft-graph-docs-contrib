---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsResourceAdministratorFinding securityToolAwsResourceAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("YXdzU2VjdXJpdHlUb29sQWRtaW5pc3RyYXRpb25GaW5kaW5nNA").microsoft.graph.securityToolAwsResourceAdministratorFinding()
	.buildRequest()
	.get();

```