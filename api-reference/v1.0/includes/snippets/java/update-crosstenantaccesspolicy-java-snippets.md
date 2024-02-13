---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicy crossTenantAccessPolicy = new CrossTenantAccessPolicy();
LinkedList<String> allowedCloudEndpoints = new LinkedList<String>();
allowedCloudEndpoints.add("microsoftonline.us");
crossTenantAccessPolicy.setAllowedCloudEndpoints(allowedCloudEndpoints);
CrossTenantAccessPolicy result = graphClient.policies().crossTenantAccessPolicy().patch(crossTenantAccessPolicy);


```