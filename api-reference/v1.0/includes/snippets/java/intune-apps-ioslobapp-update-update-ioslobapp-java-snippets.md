---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosLobApp mobileApp = new IosLobApp();
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
mobileApp.committedContentVersion = "Committed Content Version value";
mobileApp.fileName = "File Name value";
mobileApp.size = 4L;
mobileApp.bundleId = "Bundle Id value";
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
mobileApp.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");
mobileApp.versionNumber = "Version Number value";
mobileApp.buildNumber = "Build Number value";

graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.patch(mobileApp);

```