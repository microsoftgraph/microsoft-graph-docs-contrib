---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.FilteringProfile filteringProfile = new com.microsoft.graph.beta.models.networkaccess.FilteringProfile();
filteringProfile.setState(com.microsoft.graph.beta.models.networkaccess.Status.Disabled);
com.microsoft.graph.models.networkaccess.FilteringProfile result = graphClient.networkAccess().filteringProfiles().byFilteringProfileId("{filteringProfile-id}").patch(filteringProfile);


```