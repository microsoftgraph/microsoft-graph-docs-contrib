---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcExternalPartner cloudPcExternalPartner = new CloudPcExternalPartner();
cloudPcExternalPartner.setOdataType("#microsoft.graph.cloudPcExternalPartner");
cloudPcExternalPartner.setEnableConnection(true);
CloudPcExternalPartner result = graphClient.deviceManagement().virtualEndpoint().externalPartners().byCloudPcExternalPartnerId("{cloudPcExternalPartner-id}").patch(cloudPcExternalPartner);


```