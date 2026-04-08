---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

InsiderRiskyUserApproval controlConfiguration = new InsiderRiskyUserApproval();
controlConfiguration.setOdataType("#microsoft.graph.insiderRiskyUserApproval");
controlConfiguration.setId("insiderRiskyUserApproval");
controlConfiguration.setIsApprovalRequired(true);
controlConfiguration.setMinimumRiskLevel(PurviewInsiderRiskManagementLevel.Elevated);
ControlConfiguration result = graphClient.identityGovernance().entitlementManagement().controlConfigurations().byControlConfigurationId("{controlConfiguration-id}").put(controlConfiguration);


```