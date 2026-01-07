---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicy threatIntelligencePolicy = new com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicy();
threatIntelligencePolicy.setOdataType("#microsoft.graph.networkaccess.threatIntelligencePolicy");
threatIntelligencePolicy.setId("a8352c78-90c6-4edd-aaca-9dc4292e7750");
threatIntelligencePolicy.setName("Threat Intel Policy");
threatIntelligencePolicy.setDescription("");
threatIntelligencePolicy.setVersion("1.0.0");
OffsetDateTime lastModifiedDateTime = OffsetDateTime.parse("2025-06-18T17:34:25.8207682Z");
threatIntelligencePolicy.setLastModifiedDateTime(lastModifiedDateTime);
com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicySettings settings = new com.microsoft.graph.beta.models.networkaccess.ThreatIntelligencePolicySettings();
settings.setDefaultAction(com.microsoft.graph.beta.models.networkaccess.ThreatIntelligenceAction.Allow);
threatIntelligencePolicy.setSettings(settings);
com.microsoft.graph.models.networkaccess.ThreatIntelligencePolicy result = graphClient.networkAccess().threatIntelligencePolicies().byThreatIntelligencePolicyId("{threatIntelligencePolicy-id}").patch(threatIntelligencePolicy);


```