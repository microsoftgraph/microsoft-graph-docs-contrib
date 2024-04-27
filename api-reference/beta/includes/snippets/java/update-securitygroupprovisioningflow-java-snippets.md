---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.SecurityGroupProvisioningFlow provisioningFlow = new com.microsoft.graph.beta.models.industrydata.SecurityGroupProvisioningFlow();
provisioningFlow.setOdataType("#microsoft.graph.industryData.securityGroupProvisioningFlow");
com.microsoft.graph.beta.models.industrydata.SecurityGroupCreationOptions creationOptions = new com.microsoft.graph.beta.models.industrydata.SecurityGroupCreationOptions();
creationOptions.setCreateBasedOnRoleGroup(true);
creationOptions.setCreateBasedOnOrgPlusRoleGroup(true);
provisioningFlow.setCreationOptions(creationOptions);
com.microsoft.graph.models.industrydata.ProvisioningFlow result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").provisioningFlows().byProvisioningFlowId("{provisioningFlow-id}").patch(provisioningFlow);


```