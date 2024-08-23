---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.RemoteNetwork remoteNetwork = new com.microsoft.graph.beta.models.networkaccess.RemoteNetwork();
remoteNetwork.setName("Bellevue branch w/ fwd profile");
remoteNetwork.setRegion(com.microsoft.graph.beta.models.networkaccess.Region.CanadaEast);
LinkedList<com.microsoft.graph.beta.models.networkaccess.ForwardingProfile> forwardingProfiles = new LinkedList<com.microsoft.graph.beta.models.networkaccess.ForwardingProfile>();
com.microsoft.graph.beta.models.networkaccess.ForwardingProfile forwardingProfile = new com.microsoft.graph.beta.models.networkaccess.ForwardingProfile();
forwardingProfile.setId("1adaf535-1e31-4e14-983f-2270408162bf");
forwardingProfiles.add(forwardingProfile);
remoteNetwork.setForwardingProfiles(forwardingProfiles);
com.microsoft.graph.models.networkaccess.RemoteNetwork result = graphClient.networkAccess().connectivity().remoteNetworks().post(remoteNetwork);


```