---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.item.schedulepolicyapplytask.SchedulePolicyApplyTaskPostRequestBody schedulePolicyApplyTaskPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.item.schedulepolicyapplytask.SchedulePolicyApplyTaskPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("reservePercentage", 50);
additionalData.put("cronScheduleExpression", "0 0 0 20 * *");
additionalData.put("startDateTime", "2025-03-12 00:00:00");
additionalData.put("endDateTime", null);
additionalData.put("timezone", "cst");
schedulePolicyApplyTaskPostRequestBody.setAdditionalData(additionalData);
graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").schedulePolicyApplyTask().post(schedulePolicyApplyTaskPostRequestBody);


```