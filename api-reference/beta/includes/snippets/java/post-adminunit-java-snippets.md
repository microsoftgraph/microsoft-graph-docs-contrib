---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.AdministrativeUnitProvisioningFlow provisioningFlow = new com.microsoft.graph.beta.models.industrydata.AdministrativeUnitProvisioningFlow();
provisioningFlow.setOdataType("#microsoft.graph.industryData.administrativeUnitProvisioningFlow");
com.microsoft.graph.beta.models.industrydata.AdminUnitCreationOptions creationOptions = new com.microsoft.graph.beta.models.industrydata.AdminUnitCreationOptions();
creationOptions.setCreateBasedOnOrg(true);
creationOptions.setCreateBasedOnOrgPlusroleGroup(true);
provisioningFlow.setCreationOptions(creationOptions);
com.microsoft.graph.models.industrydata.ProvisioningFlow result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").provisioningFlows().post(provisioningFlow);


```