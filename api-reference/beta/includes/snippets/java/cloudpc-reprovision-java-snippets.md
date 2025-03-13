---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.item.reprovision.ReprovisionPostRequestBody reprovisionPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.cloudpcs.item.reprovision.ReprovisionPostRequestBody();
reprovisionPostRequestBody.setUserAccountType(CloudPcUserAccountType.Administrator);
reprovisionPostRequestBody.setOsVersion(CloudPcOperatingSystem.Windows10);
graphClient.deviceManagement().virtualEndpoint().cloudPCs().byCloudPCId("{cloudPC-id}").reprovision().post(reprovisionPostRequestBody);


```