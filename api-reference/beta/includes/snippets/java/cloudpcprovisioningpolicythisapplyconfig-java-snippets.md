---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.applyconfig.ApplyConfigPostRequestBody applyConfigPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.provisioningpolicies.applyconfig.ApplyConfigPostRequestBody();
LinkedList<String> cloudPcIds = new LinkedList<String>();
cloudPcIds.add("52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4");
cloudPcIds.add("ff117b6c-e3e6-41be-9cae-eb6743249a30");
applyConfigPostRequestBody.setCloudPcIds(cloudPcIds);
applyConfigPostRequestBody.setPolicySettings(EnumSet.of(CloudPcPolicySettingType.Region));
graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().applyConfig().post(applyConfigPostRequestBody);


```