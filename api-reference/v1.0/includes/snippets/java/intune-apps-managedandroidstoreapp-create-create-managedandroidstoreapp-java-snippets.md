---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ManagedAndroidStoreApp mobileApp = new ManagedAndroidStoreApp();
mobileApp.displayName = "Display Name value";
mobileApp.description = "Description value";
mobileApp.publisher = "Publisher value";
MimeContent largeIcon = new MimeContent();
largeIcon.type = "Type value";
largeIcon.value = Base64.getDecoder().decode("dmFsdWU=");
mobileApp.largeIcon = largeIcon;
mobileApp.isFeatured = true;
mobileApp.privacyInformationUrl = "https://example.com/privacyInformationUrl/";
mobileApp.informationUrl = "https://example.com/informationUrl/";
mobileApp.owner = "Owner value";
mobileApp.developer = "Developer value";
mobileApp.notes = "Notes value";
mobileApp.publishingState = MobileAppPublishingState.PROCESSING;
mobileApp.appAvailability = ManagedAppAvailability.LINE_OF_BUSINESS;
mobileApp.version = "Version value";
mobileApp.packageId = "Package Id value";
mobileApp.appStoreUrl = "https://example.com/appStoreUrl/";
AndroidMinimumOperatingSystem minimumSupportedOperatingSystem = new AndroidMinimumOperatingSystem();
minimumSupportedOperatingSystem.v4_0 = true;
minimumSupportedOperatingSystem.v4_0_3 = true;
minimumSupportedOperatingSystem.v4_1 = true;
minimumSupportedOperatingSystem.v4_2 = true;
minimumSupportedOperatingSystem.v4_3 = true;
minimumSupportedOperatingSystem.v4_4 = true;
minimumSupportedOperatingSystem.v5_0 = true;
minimumSupportedOperatingSystem.v5_1 = true;
minimumSupportedOperatingSystem.v6_0 = true;
minimumSupportedOperatingSystem.v7_0 = true;
minimumSupportedOperatingSystem.v7_1 = true;
minimumSupportedOperatingSystem.v8_0 = true;
minimumSupportedOperatingSystem.v8_1 = true;
minimumSupportedOperatingSystem.v9_0 = true;
minimumSupportedOperatingSystem.v10_0 = true;
minimumSupportedOperatingSystem.v11_0 = true;
mobileApp.minimumSupportedOperatingSystem = minimumSupportedOperatingSystem;

graphClient.deviceAppManagement().mobileApps()
	.buildRequest()
	.post(mobileApp);

```