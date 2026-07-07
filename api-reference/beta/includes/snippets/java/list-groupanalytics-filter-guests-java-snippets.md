---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GroupAnalyticsCollectionResponse result = graphClient.reports().identityAnalytics().groups().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "isValidGroup eq true and guestTransitiveUserCount gt 0";
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "createdDateTime", "groupType", "transitiveUserCount", "guestTransitiveUserCount"};
	requestConfiguration.queryParameters.orderby = new String []{"createdDateTime desc"};
	requestConfiguration.queryParameters.top = 10;
});


```