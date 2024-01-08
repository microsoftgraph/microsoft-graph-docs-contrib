---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsUserFinding secretInformationAccessAwsUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1VzZXJGaW5kaW5nLDQ4MzA2").microsoft.graph.secretInformationAccessAwsUserFinding()
	.buildRequest()
	.get();

```