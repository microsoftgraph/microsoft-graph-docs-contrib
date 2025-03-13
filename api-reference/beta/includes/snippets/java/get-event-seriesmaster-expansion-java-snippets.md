---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event result = graphClient.me().events().byEventId("{event-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"subject", "start", "end", "occurrenceId", "exceptionOccurrences", "cancelledOccurrences"};
	requestConfiguration.queryParameters.expand = new String []{"exceptionOccurrences"};
});


```