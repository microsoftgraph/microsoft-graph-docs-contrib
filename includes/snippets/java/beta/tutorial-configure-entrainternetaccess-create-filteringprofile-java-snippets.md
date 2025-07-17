---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.FilteringProfile filteringProfile = new com.microsoft.graph.beta.models.networkaccess.FilteringProfile();
filteringProfile.setName("Security Profile for UserA");
filteringProfile.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
filteringProfile.setPriority(100L);
LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyLink> policies = new LinkedList<com.microsoft.graph.beta.models.networkaccess.PolicyLink>();
filteringProfile.setPolicies(policies);
com.microsoft.graph.models.networkaccess.FilteringProfile result = graphClient.networkAccess().filteringProfiles().post(filteringProfile);


```