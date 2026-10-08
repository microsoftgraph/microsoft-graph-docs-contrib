---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.reports().getMicrosoft365CopilotUserCountSummaryWithPeriod("{period}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.format = "text/csv";
});


```