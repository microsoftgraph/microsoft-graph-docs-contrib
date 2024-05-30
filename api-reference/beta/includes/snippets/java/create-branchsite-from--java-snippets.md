---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.BranchSite branchSite = new com.microsoft.graph.beta.models.networkaccess.BranchSite();
branchSite.setName("test branch - 11:50");
branchSite.setCountry("United States");
branchSite.setRegion(com.microsoft.graph.beta.models.networkaccess.Region.EastUS);
branchSite.setBandwidthCapacity(500L);
com.microsoft.graph.models.networkaccess.BranchSite result = graphClient.networkAccess().connectivity().branches().post(branchSite);


```