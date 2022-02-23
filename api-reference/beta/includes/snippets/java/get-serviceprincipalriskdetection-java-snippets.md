---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalRiskDetection servicePrincipalRiskDetection = graphClient.identityProtection().servicePrincipalRiskDetections("{servicePrincipalRiskDetectionId}")
	.buildRequest()
	.get();

```