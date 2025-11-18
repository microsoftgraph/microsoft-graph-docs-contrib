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
cloudPcProvisioningPolicy.setImageId("Image ID value");
cloudPcProvisioningPolicy.setImageDisplayName("Image Display Name value");
cloudPcProvisioningPolicy.setImageType(CloudPcProvisioningPolicyImageType.Custom);
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.setLanguage("en-US");
cloudPcProvisioningPolicy.setWindowsSettings(windowsSettings);
CloudPcWindowsSetting windowsSetting = new CloudPcWindowsSetting();
windowsSetting.setLocale("en-US");
cloudPcProvisioningPolicy.setWindowsSetting(windowsSetting);
MicrosoftManagedDesktop microsoftManagedDesktop = new MicrosoftManagedDesktop();
microsoftManagedDesktop.setManagedType(MicrosoftManagedDesktopType.StarterManaged);
microsoftManagedDesktop.setProfile(null);
cloudPcProvisioningPolicy.setMicrosoftManagedDesktop(microsoftManagedDesktop);
CloudPcProvisioningPolicyAutopatch autopatch = new CloudPcProvisioningPolicyAutopatch();
autopatch.setAutopatchGroupId("91197a0b-3a74-408d-ba88-bce3fdc4e5eb");
cloudPcProvisioningPolicy.setAutopatch(autopatch);
CloudPcAutopilotConfiguration autopilotConfiguration = new CloudPcAutopilotConfiguration();
autopilotConfiguration.setDevicePreparationProfileId("59e5d3d2-ec68-4bfe-9693-27975b318990");
autopilotConfiguration.setApplicationTimeoutInMinutes(30);
autopilotConfiguration.setOnFailureDeviceAccessDenied(false);
cloudPcProvisioningPolicy.setAutopilotConfiguration(autopilotConfiguration);
CloudPcUserSettingsPersistenceConfiguration userSettingsPersistenceConfiguration = new CloudPcUserSettingsPersistenceConfiguration();
userSettingsPersistenceConfiguration.setUserSettingsPersistenceEnabled(false);
userSettingsPersistenceConfiguration.setUserSettingsPersistenceStorageSizeCategory(CloudPcUserSettingsPersistenceStorageSizeCategory.FourGB);
cloudPcProvisioningPolicy.setUserSettingsPersistenceConfiguration(userSettingsPersistenceConfiguration);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("onPremisesConnectionId", "4e47d0f6-6f77-44f0-8893-c0fe1701ffff");
cloudPcProvisioningPolicy.setAdditionalData(additionalData);
CloudPcProvisioningPolicy result = graphClient.deviceManagement().virtualEndpoint().provisioningPolicies().byCloudPcProvisioningPolicyId("{cloudPcProvisioningPolicy-id}").patch(cloudPcProvisioningPolicy);


```