---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.networkaccess.BranchConnectivityConfiguration result = graphClient.networkAccess().connectivity().branches().byBranchSiteId("{branchSite-id}").connectivityConfiguration().get();


```