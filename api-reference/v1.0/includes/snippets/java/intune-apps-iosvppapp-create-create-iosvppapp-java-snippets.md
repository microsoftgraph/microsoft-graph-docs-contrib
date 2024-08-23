---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosVppApp mobileApp = new IosVppApp();
mobileApp.setOdataType("#microsoft.graph.iosVppApp");
mobileApp.setDisplayName("Display Name value");
mobileApp.setDescription("Description value");
mobileApp.setPublisher("Publisher value");
MimeContent largeIcon = new MimeContent();
largeIcon.setOdataType("microsoft.graph.mimeContent");
largeIcon.setType("Type value");
byte[] value = Base64.getDecoder().decode("dmFsdWU=");
largeIcon.setValue(value);
mobileApp.setLargeIcon(largeIcon);
mobileApp.setIsFeatured(true);
mobileApp.setPrivacyInformationUrl("https://example.com/privacyInformationUrl/");
mobileApp.setInformationUrl("https://example.com/informationUrl/");
mobileApp.setOwner("Owner value");
mobileApp.setDeveloper("Developer value");
mobileApp.setNotes("Notes value");
mobileApp.setPublishingState(MobileAppPublishingState.Processing);
mobileApp.setUsedLicenseCount(0);
mobileApp.setTotalLicenseCount(1);
OffsetDateTime releaseDateTime = OffsetDateTime.parse("2017-01-01T00:01:34.7470482-08:00");
mobileApp.setReleaseDateTime(releaseDateTime);
mobileApp.setAppStoreUrl("https://example.com/appStoreUrl/");
VppLicensingType licensingType = new VppLicensingType();
licensingType.setOdataType("microsoft.graph.vppLicensingType");
licensingType.setSupportsUserLicensing(true);
licensingType.setSupportsDeviceLicensing(true);
mobileApp.setLicensingType(licensingType);
IosDeviceType applicableDeviceType = new IosDeviceType();
applicableDeviceType.setOdataType("microsoft.graph.iosDeviceType");
applicableDeviceType.setIPad(true);
applicableDeviceType.setIPhoneAndIPod(true);
mobileApp.setApplicableDeviceType(applicableDeviceType);
mobileApp.setVppTokenOrganizationName("Vpp Token Organization Name value");
mobileApp.setVppTokenAccountType(VppTokenAccountType.Education);
mobileApp.setVppTokenAppleId("Vpp Token Apple Id value");
mobileApp.setBundleId("Bundle Id value");
MobileApp result = graphClient.deviceAppManagement().mobileApps().post(mobileApp);


```