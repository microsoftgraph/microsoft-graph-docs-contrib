---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SharedPCConfiguration deviceConfiguration = new SharedPCConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
SharedPCAccountManagerPolicy accountManagerPolicy = new SharedPCAccountManagerPolicy();
accountManagerPolicy.accountDeletionPolicy = SharedPCAccountDeletionPolicyType.DISK_SPACE_THRESHOLD;
accountManagerPolicy.cacheAccountsAboveDiskFreePercentage = 4;
accountManagerPolicy.inactiveThresholdDays = 5;
accountManagerPolicy.removeAccountsBelowDiskFreePercentage = 5;
deviceConfiguration.accountManagerPolicy = accountManagerPolicy;
deviceConfiguration.allowedAccounts = EnumSet.of(SharedPCAllowedAccountType.DOMAIN);
deviceConfiguration.allowLocalStorage = true;
deviceConfiguration.disableAccountManager = true;
deviceConfiguration.disableEduPolicies = true;
deviceConfiguration.disablePowerPolicies = true;
deviceConfiguration.disableSignInOnResume = true;
deviceConfiguration.enabled = true;
deviceConfiguration.idleTimeBeforeSleepInSeconds = 12;
deviceConfiguration.kioskAppDisplayName = "Kiosk App Display Name value";
deviceConfiguration.kioskAppUserModelId = "Kiosk App User Model Id value";
deviceConfiguration.maintenanceStartTime = new TimeOfDay(0, 0, 0);

graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.post(deviceConfiguration);

```