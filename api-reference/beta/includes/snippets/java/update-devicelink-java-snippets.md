---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.DeviceLink deviceLink = new com.microsoft.graph.beta.models.networkaccess.DeviceLink();
deviceLink.setName("Backup Link");
com.microsoft.graph.models.networkaccess.DeviceLink result = graphClient.networkAccess().connectivity().branches().byBranchSiteId("{branchSite-id}").deviceLinks().byDeviceLinkId("{deviceLink-id}").patch(deviceLink);


```