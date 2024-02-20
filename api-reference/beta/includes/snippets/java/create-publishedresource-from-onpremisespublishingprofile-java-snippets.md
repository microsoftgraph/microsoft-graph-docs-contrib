---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PublishedResource publishedResource = new PublishedResource();
publishedResource.setDisplayName("New provisioning");
publishedResource.setResourceName("domain1.contoso.com");
PublishedResource result = graphClient.onPremisesPublishingProfiles().byOnPremisesPublishingProfileId("{onPremisesPublishingProfile-id}").publishedResources().post(publishedResource);


```