---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

var result = graphClient.deviceManagement().virtualEndpoint().cloudPCs().getProvisionedCloudPCsWithGroupIdWithServicePlanId("{groupId}", "{servicePlanId}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "displayName", "powerState", "connectivityResult", "lastLoginResult", "lastRemoteActionResult", "osVersion", "provisioningPolicyName", "userAccountType", "productType"};
});


```