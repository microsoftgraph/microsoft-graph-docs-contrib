---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosStoreApp mobileApp = new IosStoreApp();
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
mobileApp.bundleId = "Bundle Id value";
mobileApp.appStoreUrl = "https://example.com/appStoreUrl/";
IosDeviceType applicableDeviceType = new IosDeviceType();
applicableDeviceType.iPad = true;
applicableDeviceType.iPhoneAndIPod = true;
mobileApp.applicableDeviceType = applicableDeviceType;
IosMinimumOperatingSystem minimumSupportedOperatingSystem = new IosMinimumOperatingSystem();
minimumSupportedOperatingSystem.v8_0 = true;
minimumSupportedOperatingSystem.v9_0 = true;
minimumSupportedOperatingSystem.v10_0 = true;
minimumSupportedOperatingSystem.v11_0 = true;
minimumSupportedOperatingSystem.v12_0 = true;
minimumSupportedOperatingSystem.v13_0 = true;
minimumSupportedOperatingSystem.v14_0 = true;
minimumSupportedOperatingSystem.v15_0 = true;
mobileApp.minimumSupportedOperatingSystem = minimumSupportedOperatingSystem;

graphClient.deviceAppManagement().mobileApps()
	.buildRequest()
	.post(mobileApp);

```