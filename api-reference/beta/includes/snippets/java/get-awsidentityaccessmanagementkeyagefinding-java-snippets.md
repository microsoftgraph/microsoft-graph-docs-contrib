---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsIdentityAccessManagementKeyAgeFinding awsIdentityAccessManagementKeyAgeFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxBd3NJZGVudGl0eUFjY2Vzc01hbmFnZW1lbnRLZXlBZ2VGaW5kaW5nLDIyMDE4").microsoft.graph.awsIdentityAccessManagementKeyAgeFinding()
	.buildRequest()
	.get();

```