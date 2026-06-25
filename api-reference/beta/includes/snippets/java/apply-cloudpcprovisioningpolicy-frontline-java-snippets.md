---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.item.apply.ApplyPostRequestBody applyPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.item.apply.ApplyPostRequestBody();
applyPostRequestBody.setReservePercentage(80);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("isForceUserLogoffEnabled", false);
applyPostRequestBody.setAdditionalData(additionalData);
graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").apply().post(applyPostRequestBody);


```