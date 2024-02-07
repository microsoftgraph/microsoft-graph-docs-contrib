---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.description = "Description value";
cloudPcProvisioningPolicy.displayName = "Display Name value";
CloudPcDomainJoinConfiguration domainJoinConfiguration = new CloudPcDomainJoinConfiguration();
domainJoinConfiguration.domainJoinType = CloudPcDomainJoinType.HYBRID_AZURE_A_D_JOIN;
domainJoinConfiguration.onPremisesConnectionId = "16ee6c71-fc10-438b-88ac-daa1ccafffff";
cloudPcProvisioningPolicy.domainJoinConfiguration = domainJoinConfiguration;
LinkedList<CloudPcDomainJoinConfiguration> domainJoinConfigurationsList = new LinkedList<CloudPcDomainJoinConfiguration>();
CloudPcDomainJoinConfiguration domainJoinConfigurations = new CloudPcDomainJoinConfiguration();
domainJoinConfigurations.onPremisesConnectionId = "16ee6c71-fc10-438b-88ac-daa1ccafffff";
domainJoinConfigurations.type = CloudPcDomainJoinType.HYBRID_AZURE_A_D_JOIN;
domainJoinConfigurationsList.add(domainJoinConfigurations);
CloudPcDomainJoinConfiguration domainJoinConfigurations1 = new CloudPcDomainJoinConfiguration();
domainJoinConfigurations1.onPremisesConnectionId = "26e16c71-f210-438b-88ac-d481ccafffff";
domainJoinConfigurations1.type = CloudPcDomainJoinType.HYBRID_AZURE_A_D_JOIN;
domainJoinConfigurationsList.add(domainJoinConfigurations1);
cloudPcProvisioningPolicy.domainJoinConfigurations = domainJoinConfigurationsList;
cloudPcProvisioningPolicy.id = "1d164206-bf41-4fd2-8424-a3192d39ffff";
cloudPcProvisioningPolicy.enableSingleSignOn = true;
cloudPcProvisioningPolicy.imageDisplayName = "Windows-10 19h1-evd";
cloudPcProvisioningPolicy.imageId = "MicrosoftWindowsDesktop_Windows-10_19h1-evd";
cloudPcProvisioningPolicy.imageType = CloudPcProvisioningPolicyImageType.GALLERY;
cloudPcProvisioningPolicy.onPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff";
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.language = "en-US";
cloudPcProvisioningPolicy.windowsSettings = windowsSettings;
CloudPcWindowsSetting windowsSetting = new CloudPcWindowsSetting();
windowsSetting.locale = "en-US";
cloudPcProvisioningPolicy.windowsSetting = windowsSetting;
cloudPcProvisioningPolicy.provisioningType = CloudPcProvisioningType.DEDICATED;

graphClient.deviceManagement().virtualEndpoint().provisioningPolicies()
	.buildRequest()
	.post(cloudPcProvisioningPolicy);

```