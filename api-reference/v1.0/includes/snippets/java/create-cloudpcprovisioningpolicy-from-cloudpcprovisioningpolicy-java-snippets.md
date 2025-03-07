---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.setOdataType("#microsoft.graph.cloudPcProvisioningPolicy");
cloudPcProvisioningPolicy.setDescription("Description value");
cloudPcProvisioningPolicy.setDisplayName("Display Name value");
LinkedList<CloudPcDomainJoinConfiguration> domainJoinConfigurations = new LinkedList<CloudPcDomainJoinConfiguration>();
CloudPcDomainJoinConfiguration cloudPcDomainJoinConfiguration = new CloudPcDomainJoinConfiguration();
cloudPcDomainJoinConfiguration.setOnPremisesConnectionId("16ee6c71-fc10-438b-88ac-daa1ccafffff");
cloudPcDomainJoinConfiguration.setDomainJoinType(CloudPcDomainJoinType.HybridAzureADJoin);
domainJoinConfigurations.add(cloudPcDomainJoinConfiguration);
CloudPcDomainJoinConfiguration cloudPcDomainJoinConfiguration1 = new CloudPcDomainJoinConfiguration();
cloudPcDomainJoinConfiguration1.setOnPremisesConnectionId("26e16c71-f210-438b-88ac-d481ccafffff");
cloudPcDomainJoinConfiguration1.setDomainJoinType(CloudPcDomainJoinType.HybridAzureADJoin);
domainJoinConfigurations.add(cloudPcDomainJoinConfiguration1);
cloudPcProvisioningPolicy.setDomainJoinConfigurations(domainJoinConfigurations);
cloudPcProvisioningPolicy.setId("1d164206-bf41-4fd2-8424-a3192d39ffff");
cloudPcProvisioningPolicy.setEnableSingleSignOn(true);
cloudPcProvisioningPolicy.setImageDisplayName("Windows-10 19h1-evd");
cloudPcProvisioningPolicy.setImageId("MicrosoftWindowsDesktop_Windows-10_19h1-evd");
cloudPcProvisioningPolicy.setImageType(CloudPcProvisioningPolicyImageType.Gallery);
CloudPcWindowsSetting windowsSetting = new CloudPcWindowsSetting();
windowsSetting.setLocale("en-US");
cloudPcProvisioningPolicy.setWindowsSetting(windowsSetting);
cloudPcProvisioningPolicy.setProvisioningType(CloudPcProvisioningType.Dedicated);
CloudPcProvisioningPolicy result = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().post(cloudPcProvisioningPolicy);


```