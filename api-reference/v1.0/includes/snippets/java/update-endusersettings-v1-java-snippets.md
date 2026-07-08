---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EndUserSettings controlConfiguration = new EndUserSettings();
controlConfiguration.setOdataType("#microsoft.graph.endUserSettings");
controlConfiguration.setRelatedPeopleInsightLevel(AccessPackageSuggestionRelatedPeopleInsightLevel.CountAndNames);
controlConfiguration.setShowApproverDetailsToMembers(true);
ControlConfiguration result = graphClient.identityGovernance().entitlementManagement().controlConfigurations().byControlConfigurationId("{controlConfiguration-id}").put(controlConfiguration);


```