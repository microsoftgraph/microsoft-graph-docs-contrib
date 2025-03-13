---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.deviceenrollmentconfigurations.item.setpriority.SetPriorityPostRequestBody setPriorityPostRequestBody = new com.microsoft.graph.devicemanagement.deviceenrollmentconfigurations.item.setpriority.SetPriorityPostRequestBody();
setPriorityPostRequestBody.setPriority(8);
graphClient.deviceManagement().deviceEnrollmentConfigurations().byDeviceEnrollmentConfigurationId("{deviceEnrollmentConfiguration-id}").setPriority().post(setPriorityPostRequestBody);


```