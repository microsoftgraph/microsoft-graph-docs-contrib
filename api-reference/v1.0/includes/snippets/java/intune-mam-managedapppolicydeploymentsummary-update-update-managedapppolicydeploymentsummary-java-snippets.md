---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAppPolicyDeploymentSummary managedAppPolicyDeploymentSummary = new ManagedAppPolicyDeploymentSummary();
managedAppPolicyDeploymentSummary.displayName = "Display Name value";
managedAppPolicyDeploymentSummary.configurationDeployedUserCount = 14;
managedAppPolicyDeploymentSummary.lastRefreshTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:01:30.1240368+00:00");
LinkedList<ManagedAppPolicyDeploymentSummaryPerApp> configurationDeploymentSummaryPerAppList = new LinkedList<ManagedAppPolicyDeploymentSummaryPerApp>();
ManagedAppPolicyDeploymentSummaryPerApp configurationDeploymentSummaryPerApp = new ManagedAppPolicyDeploymentSummaryPerApp();
AndroidMobileAppIdentifier mobileAppIdentifier = new AndroidMobileAppIdentifier();
mobileAppIdentifier.packageId = "Package Id value";
configurationDeploymentSummaryPerApp.mobileAppIdentifier = mobileAppIdentifier;
configurationDeploymentSummaryPerApp.configurationAppliedUserCount = 13;
configurationDeploymentSummaryPerAppList.add(configurationDeploymentSummaryPerApp);
managedAppPolicyDeploymentSummary.configurationDeploymentSummaryPerApp = configurationDeploymentSummaryPerAppList;
managedAppPolicyDeploymentSummary.version = "Version value";

graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").deploymentSummary()
	.buildRequest()
	.patch(managedAppPolicyDeploymentSummary);

```