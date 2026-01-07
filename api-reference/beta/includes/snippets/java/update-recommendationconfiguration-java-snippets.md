---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RecommendationConfiguration recommendationConfiguration = new RecommendationConfiguration();
recommendationConfiguration.setIsNotificationEnabled(true);
RecommendationConfiguration result = graphClient.directory().recommendationConfiguration().patch(recommendationConfiguration);


```