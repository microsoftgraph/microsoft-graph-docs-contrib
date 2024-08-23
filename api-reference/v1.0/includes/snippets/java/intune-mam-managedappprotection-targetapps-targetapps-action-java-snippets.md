---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.deviceappmanagement.managedapppolicies.item.targetapps.TargetAppsPostRequestBody targetAppsPostRequestBody = new com.microsoft.graph.deviceappmanagement.managedapppolicies.item.targetapps.TargetAppsPostRequestBody();
LinkedList<ManagedMobileApp> apps = new LinkedList<ManagedMobileApp>();
ManagedMobileApp managedMobileApp = new ManagedMobileApp();
managedMobileApp.setOdataType("#microsoft.graph.managedMobileApp");
AndroidMobileAppIdentifier mobileAppIdentifier = new AndroidMobileAppIdentifier();
mobileAppIdentifier.setOdataType("microsoft.graph.androidMobileAppIdentifier");
mobileAppIdentifier.setPackageId("Package Id value");
managedMobileApp.setMobileAppIdentifier(mobileAppIdentifier);
managedMobileApp.setId("0a129715-9715-0a12-1597-120a1597120a");
managedMobileApp.setVersion("Version value");
apps.add(managedMobileApp);
targetAppsPostRequestBody.setApps(apps);
graphClient.deviceAppManagement().managedAppPolicies().byManagedAppPolicyId("{managedAppPolicy-id}").targetApps().post(targetAppsPostRequestBody);


```