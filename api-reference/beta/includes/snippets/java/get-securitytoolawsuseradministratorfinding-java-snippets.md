---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityToolAwsUserAdministratorFinding securityToolAwsUserAdministratorFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA").microsoft.graph.securityToolAwsUserAdministratorFinding()
	.buildRequest()
	.get();

```