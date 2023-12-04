---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsRoleFinding secretInformationAccessAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz").microsoft.graph.secretInformationAccessAwsRoleFinding()
	.buildRequest()
	.get();

```