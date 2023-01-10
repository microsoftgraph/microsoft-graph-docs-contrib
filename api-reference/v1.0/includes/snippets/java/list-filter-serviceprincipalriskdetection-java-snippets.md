---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalRiskDetectionCollectionPage servicePrincipalRiskDetections = graphClient.identityProtection().servicePrincipalRiskDetections()
	.buildRequest()
	.filter("riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'")
	.get();

```