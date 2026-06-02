---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcAgentPool cloudPcPool = new CloudPcAgentPool();
cloudPcPool.setOdataType("#microsoft.graph.cloudPcAgentPool");
cloudPcPool.setDisplayName("Contoso Development Pool");
CloudPcConfiguration cloudPcConfiguration = new CloudPcConfiguration();
cloudPcConfiguration.setImageId("microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365");
cloudPcConfiguration.setImageType(CloudPcProvisioningPolicyImageType.Gallery);
cloudPcConfiguration.setOsLocale("en-US");
cloudPcPool.setCloudPcConfiguration(cloudPcConfiguration);
CloudPcMicrosoftHostedNetworkConfiguration networkConfiguration = new CloudPcMicrosoftHostedNetworkConfiguration();
networkConfiguration.setOdataType("#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration");
networkConfiguration.setGeographicLocationType(CloudPcGeographicLocationType.UsWest);
LinkedList<CloudPcRegionGroupConfiguration> regionGroups = new LinkedList<CloudPcRegionGroupConfiguration>();
CloudPcRegionGroupConfiguration cloudPcRegionGroupConfiguration = new CloudPcRegionGroupConfiguration();
cloudPcRegionGroupConfiguration.setRegionGroup(CloudPcRegionGroup.UsWest);
LinkedList<String> regions = new LinkedList<String>();
regions.add("westus2");
regions.add("westus3");
cloudPcRegionGroupConfiguration.setRegions(regions);
regionGroups.add(cloudPcRegionGroupConfiguration);
networkConfiguration.setRegionGroups(regionGroups);
cloudPcPool.setNetworkConfiguration(networkConfiguration);
CloudPcAgentPoolBillingConfiguration billingConfiguration = new CloudPcAgentPoolBillingConfiguration();
billingConfiguration.setBillingType(CloudPcAgentPoolBillingType.PayAsYouGo);
billingConfiguration.setBillingPlanId("00000000-0000-0000-0000-000000000001");
cloudPcPool.setBillingConfiguration(billingConfiguration);
CloudPcAgentPoolScalingPolicy scalingPolicy = new CloudPcAgentPoolScalingPolicy();
scalingPolicy.setMinimumCount(2);
scalingPolicy.setMaximumCount(10);
cloudPcPool.setScalingPolicy(scalingPolicy);
CloudPcAgentPoolCapabilityConfiguration capabilities = new CloudPcAgentPoolCapabilityConfiguration();
capabilities.setOdataType("#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration");
capabilities.setEnableSingleSignOn(true);
cloudPcPool.setCapabilities(capabilities);
CloudPcPool result = graphClient.deviceManagement().virtualEndpoint().cloudPcPools().post(cloudPcPool);


```