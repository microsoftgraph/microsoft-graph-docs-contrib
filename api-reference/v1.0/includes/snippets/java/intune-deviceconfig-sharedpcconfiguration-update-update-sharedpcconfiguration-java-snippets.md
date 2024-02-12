---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharedPCConfiguration deviceConfiguration = new SharedPCConfiguration();
deviceConfiguration.setOdataType("#microsoft.graph.sharedPCConfiguration");
deviceConfiguration.setDescription("Description value");
deviceConfiguration.setDisplayName("Display Name value");
deviceConfiguration.setVersion(7);
SharedPCAccountManagerPolicy accountManagerPolicy = new SharedPCAccountManagerPolicy();
accountManagerPolicy.setOdataType("microsoft.graph.sharedPCAccountManagerPolicy");
accountManagerPolicy.setAccountDeletionPolicy(SharedPCAccountDeletionPolicyType.DiskSpaceThreshold);
accountManagerPolicy.setCacheAccountsAboveDiskFreePercentage(4);
accountManagerPolicy.setInactiveThresholdDays(5);
accountManagerPolicy.setRemoveAccountsBelowDiskFreePercentage(5);
deviceConfiguration.setAccountManagerPolicy(accountManagerPolicy);
deviceConfiguration.setAllowedAccounts(EnumSet.of(SharedPCAllowedAccountType.Domain));
deviceConfiguration.setAllowLocalStorage(true);
deviceConfiguration.setDisableAccountManager(true);
deviceConfiguration.setDisableEduPolicies(true);
deviceConfiguration.setDisablePowerPolicies(true);
deviceConfiguration.setDisableSignInOnResume(true);
deviceConfiguration.setEnabled(true);
deviceConfiguration.setIdleTimeBeforeSleepInSeconds(12);
deviceConfiguration.setKioskAppDisplayName("Kiosk App Display Name value");
deviceConfiguration.setKioskAppUserModelId("Kiosk App User Model Id value");
LocalTime maintenanceStartTime = LocalTime.parse("11:59:24.7240000");
deviceConfiguration.setMaintenanceStartTime(maintenanceStartTime);
DeviceConfiguration result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").patch(deviceConfiguration);


```