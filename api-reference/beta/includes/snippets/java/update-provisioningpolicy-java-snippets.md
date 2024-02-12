---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcProvisioningPolicy cloudPcProvisioningPolicy = new CloudPcProvisioningPolicy();
cloudPcProvisioningPolicy.setOdataType("#microsoft.graph.cloudPcProvisioningPolicy");
cloudPcProvisioningPolicy.setDisplayName("HR provisioning policy");
cloudPcProvisioningPolicy.setDescription("Provisioning policy for India HR employees");
cloudPcProvisioningPolicy.setOnPremisesConnectionId("4e47d0f6-6f77-44f0-8893-c0fe1701ffff");
cloudPcProvisioningPolicy.setImageId("Image ID value");
cloudPcProvisioningPolicy.setImageDisplayName("Image Display Name value");
cloudPcProvisioningPolicy.setImageType(CloudPcProvisioningPolicyImageType.Custom);
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.setLanguage("en-US");
cloudPcProvisioningPolicy.setWindowsSettings(windowsSettings);
CloudPcWindowsSetting windowsSetting = new CloudPcWindowsSetting();
windowsSetting.setLocale("en-US");
cloudPcProvisioningPolicy.setWindowsSetting(windowsSetting);
CloudPcProvisioningPolicy result = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").patch(cloudPcProvisioningPolicy);


```