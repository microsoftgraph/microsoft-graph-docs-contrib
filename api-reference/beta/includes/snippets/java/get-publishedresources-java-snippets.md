---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PublishedResourceCollectionResponse result = graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").publishedResources().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"agentGroups"};
});


```