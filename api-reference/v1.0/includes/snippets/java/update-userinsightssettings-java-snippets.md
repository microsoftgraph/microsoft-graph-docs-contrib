---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UserInsightsSettings userInsightsSettings = new UserInsightsSettings();
userInsightsSettings.setIsEnabled(false);
UserInsightsSettings result = graphClient.users().byUserId("{user-id}").settings().itemInsights().patch(userInsightsSettings);


```