---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ReferenceCreate referenceCreate = new com.microsoft.graph.beta.models.ReferenceCreate();
referenceCreate.setOdataId("https://graph.microsoft.com/odata/groups('dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef')");
graphClient.policies().mobileDeviceManagementPolicies().byMobilityManagementPolicyId("{mobilityManagementPolicy-id}").includedGroups().ref().post(referenceCreate);


```