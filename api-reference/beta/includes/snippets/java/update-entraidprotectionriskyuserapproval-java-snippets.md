---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EntraIdProtectionRiskyUserApproval controlConfiguration = new EntraIdProtectionRiskyUserApproval();
controlConfiguration.setOdataType("#microsoft.graph.entraIdProtectionRiskyUserApproval");
controlConfiguration.setId("EntraIdProtectionRiskyUserApproval");
controlConfiguration.setIsApprovalRequired(true);
controlConfiguration.setMinimumRiskLevel(RiskLevel.Medium);
ControlConfiguration result = graphClient.identityGovernance().entitlementManagement().controlConfigurations().byControlConfigurationId("{controlConfiguration-id}").put(controlConfiguration);


```