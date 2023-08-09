---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosVppApp mobileApp = new IosVppApp();
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
mobileApp.usedLicenseCount = 0;
mobileApp.totalLicenseCount = 1;
mobileApp.releaseDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:01:34.7470482+00:00");
mobileApp.appStoreUrl = "https://example.com/appStoreUrl/";
VppLicensingType licensingType = new VppLicensingType();
licensingType.supportsUserLicensing = true;
licensingType.supportsDeviceLicensing = true;
mobileApp.licensingType = licensingType;
IosDeviceType applicableDeviceType = new IosDeviceType();
applicableDeviceType.iPad = true;
applicableDeviceType.iPhoneAndIPod = true;
mobileApp.applicableDeviceType = applicableDeviceType;
mobileApp.vppTokenOrganizationName = "Vpp Token Organization Name value";
mobileApp.vppTokenAccountType = VppTokenAccountType.EDUCATION;
mobileApp.vppTokenAppleId = "Vpp Token Apple Id value";
mobileApp.bundleId = "Bundle Id value";

graphClient.deviceAppManagement().mobileApps()
	.buildRequest()
	.post(mobileApp);

```