---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.RemoteNetwork remoteNetwork = new com.microsoft.graph.beta.models.networkaccess.RemoteNetwork();
remoteNetwork.setName("Bellevue branch");
remoteNetwork.setRegion(com.microsoft.graph.beta.models.networkaccess.Region.CanadaEast);
com.microsoft.graph.models.networkaccess.RemoteNetwork result = graphClient.networkAccess().connectivity().remoteNetworks().post(remoteNetwork);


```