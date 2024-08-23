---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedMobileApp managedMobileApp = new ManagedMobileApp();
managedMobileApp.setOdataType("#microsoft.graph.managedMobileApp");
AndroidMobileAppIdentifier mobileAppIdentifier = new AndroidMobileAppIdentifier();
mobileAppIdentifier.setOdataType("microsoft.graph.androidMobileAppIdentifier");
mobileAppIdentifier.setPackageId("Package Id value");
managedMobileApp.setMobileAppIdentifier(mobileAppIdentifier);
managedMobileApp.setVersion("Version value");
ManagedMobileApp result = graphClient.deviceAppManagement().iosManagedAppProtections().byIosManagedAppProtectionId("{iosManagedAppProtection-id}").apps().byManagedMobileAppId("{managedMobileApp-id}").patch(managedMobileApp);


```