---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedMobileApp managedMobileApp = new ManagedMobileApp();
AndroidMobileAppIdentifier mobileAppIdentifier = new AndroidMobileAppIdentifier();
mobileAppIdentifier.packageId = "Package Id value";
managedMobileApp.mobileAppIdentifier = mobileAppIdentifier;
managedMobileApp.version = "Version value";

graphClient.deviceAppManagement().iosManagedAppProtections("{iosManagedAppProtectionId}").apps("{managedMobileAppId}")
	.buildRequest()
	.patch(managedMobileApp);

```