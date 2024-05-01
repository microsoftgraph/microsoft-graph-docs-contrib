---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.OutboundProvisioningFlowSet outboundProvisioningFlowSet = new com.microsoft.graph.beta.models.industrydata.OutboundProvisioningFlowSet();
outboundProvisioningFlowSet.setOdataType("#microsoft.graph.industryData.outboundProvisioningFlowSet");
outboundProvisioningFlowSet.setDisplayName("Outbound provisioning flow Updated");
com.microsoft.graph.models.industrydata.OutboundProvisioningFlowSet result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").patch(outboundProvisioningFlowSet);


```