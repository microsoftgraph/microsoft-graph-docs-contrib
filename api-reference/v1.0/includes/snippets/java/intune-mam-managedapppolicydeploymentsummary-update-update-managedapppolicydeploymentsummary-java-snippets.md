---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedAppPolicyDeploymentSummary managedAppPolicyDeploymentSummary = new ManagedAppPolicyDeploymentSummary();
managedAppPolicyDeploymentSummary.setOdataType("#microsoft.graph.managedAppPolicyDeploymentSummary");
managedAppPolicyDeploymentSummary.setDisplayName("Display Name value");
managedAppPolicyDeploymentSummary.setConfigurationDeployedUserCount(14);
OffsetDateTime lastRefreshTime = OffsetDateTime.parse("2017-01-01T00:01:30.1240368-08:00");
managedAppPolicyDeploymentSummary.setLastRefreshTime(lastRefreshTime);
LinkedList<ManagedAppPolicyDeploymentSummaryPerApp> configurationDeploymentSummaryPerApp = new LinkedList<ManagedAppPolicyDeploymentSummaryPerApp>();
ManagedAppPolicyDeploymentSummaryPerApp managedAppPolicyDeploymentSummaryPerApp = new ManagedAppPolicyDeploymentSummaryPerApp();
managedAppPolicyDeploymentSummaryPerApp.setOdataType("microsoft.graph.managedAppPolicyDeploymentSummaryPerApp");
AndroidMobileAppIdentifier mobileAppIdentifier = new AndroidMobileAppIdentifier();
mobileAppIdentifier.setOdataType("microsoft.graph.androidMobileAppIdentifier");
mobileAppIdentifier.setPackageId("Package Id value");
managedAppPolicyDeploymentSummaryPerApp.setMobileAppIdentifier(mobileAppIdentifier);
managedAppPolicyDeploymentSummaryPerApp.setConfigurationAppliedUserCount(13);
configurationDeploymentSummaryPerApp.add(managedAppPolicyDeploymentSummaryPerApp);
managedAppPolicyDeploymentSummary.setConfigurationDeploymentSummaryPerApp(configurationDeploymentSummaryPerApp);
managedAppPolicyDeploymentSummary.setVersion("Version value");
ManagedAppPolicyDeploymentSummary result = graphClient.deviceAppManagement().iosManagedAppProtections().byIosManagedAppProtectionId("{iosManagedAppProtection-id}").deploymentSummary().patch(managedAppPolicyDeploymentSummary);


```