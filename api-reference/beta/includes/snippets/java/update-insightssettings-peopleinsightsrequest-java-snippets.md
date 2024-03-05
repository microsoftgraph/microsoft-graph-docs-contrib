---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

InsightsSettings insightsSettings = new InsightsSettings();
insightsSettings.setIsEnabledInOrganization(true);
insightsSettings.setDisabledForGroup("edbfe4fb-ec70-4300-928f-dbb2ae86c981");
InsightsSettings result = graphClient.organization().byOrganizationId("{organization-id}").settings().peopleInsights().patch(insightsSettings);


```