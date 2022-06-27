---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.displayName = "HR provisioning policy";
cloudPcProvisioningPolicy.description = "Provisioning policy for India HR employees";
cloudPcProvisioningPolicy.onPremisesConnectionId = "4e47d0f6-6f77-44f0-8893-c0fe1701ffff";
cloudPcProvisioningPolicy.imageId = "Image ID value";
cloudPcProvisioningPolicy.imageDisplayName = "Image Display Name value";
cloudPcProvisioningPolicy.imageType = CloudPcProvisioningPolicyImageType.CUSTOM;
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.language = "en-US";
cloudPcProvisioningPolicy.windowsSettings = windowsSettings;

graphClient.deviceManagement().virtualEndpoint().provisioningPolicies("{id}")
	.buildRequest()
	.patch(cloudPcProvisioningPolicy);

```