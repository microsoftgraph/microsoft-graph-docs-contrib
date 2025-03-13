---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalRiskDetectionCollectionResponse result = graphClient.identityProtection().servicePrincipalRiskDetections().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'";
});


```