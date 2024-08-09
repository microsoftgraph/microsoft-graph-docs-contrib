---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventRegistrationCollectionResponse result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").registrations().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "userId eq 'b7ef013a-c73c-4ec7-8ccb-e56290f45f68'";
});


```