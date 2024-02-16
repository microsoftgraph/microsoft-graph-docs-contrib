---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcProvisioningPolicy result = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "description", "displayName", "domainJoinConfiguration", "imageDisplayName", "imageId", "imageType", "onPremisesConnectionId", "windowsSetting", "managedBy", "cloudPcGroupDisplayName", "gracePeriodInHours", "localAdminEnabled", "alternateResourceUrl"};
});


```