---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.OutboundProvisioningFlowSet outboundProvisioningFlowSet = new com.microsoft.graph.beta.models.industrydata.OutboundProvisioningFlowSet();
outboundProvisioningFlowSet.setOdataType("#microsoft.graph.industryData.outboundProvisioningFlowSet");
outboundProvisioningFlowSet.setDisplayName("Outbound Provisioning Flow Test");
com.microsoft.graph.beta.models.industrydata.BasicFilter filter = new com.microsoft.graph.beta.models.industrydata.BasicFilter();
filter.setOdataType("#microsoft.graph.industryData.basicFilter");
filter.setAttribute(com.microsoft.graph.beta.models.industrydata.FilterOptions.OrgExternalId);
LinkedList<String> in = new LinkedList<String>();
in.add("Quarter");
in.add("Demo");
filter.setIn(in);
outboundProvisioningFlowSet.setFilter(filter);
com.microsoft.graph.models.industrydata.OutboundProvisioningFlowSet result = graphClient.external().industryData().outboundProvisioningFlowSets().post(outboundProvisioningFlowSet);


```