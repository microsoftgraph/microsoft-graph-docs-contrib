---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ForwardingProfile forwardingProfile = new com.microsoft.graph.beta.models.networkaccess.ForwardingProfile();
forwardingProfile.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
com.microsoft.graph.models.networkaccess.ForwardingProfile result = graphClient.networkAccess().forwardingProfiles().byForwardingProfileId("{forwardingProfile-id}").patch(forwardingProfile);


```