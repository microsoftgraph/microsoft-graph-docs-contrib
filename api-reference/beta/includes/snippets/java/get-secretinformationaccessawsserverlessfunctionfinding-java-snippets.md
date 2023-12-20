---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecretInformationAccessAwsServerlessFunctionFinding secretInformationAccessAwsServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1NlcnZlcmxlc3NGdW5jdGlvbkZpbmRpbmcsNzQyNg").microsoft.graph.secretInformationAccessAwsServerlessFunctionFinding()
	.buildRequest()
	.get();

```