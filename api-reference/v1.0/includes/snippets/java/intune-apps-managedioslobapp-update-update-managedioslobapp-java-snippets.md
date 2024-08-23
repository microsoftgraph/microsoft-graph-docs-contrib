---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedIOSLobApp mobileApp = new ManagedIOSLobApp();
mobileApp.setOdataType("#microsoft.graph.managedIOSLobApp");
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
mobileApp.setAppAvailability(ManagedAppAvailability.LineOfBusiness);
mobileApp.setVersion("Version value");
mobileApp.setCommittedContentVersion("Committed Content Version value");
mobileApp.setFileName("File Name value");
mobileApp.setSize(4L);
mobileApp.setBundleId("Bundle Id value");
IosDeviceType applicableDeviceType = new IosDeviceType();
applicableDeviceType.setOdataType("microsoft.graph.iosDeviceType");
applicableDeviceType.setIPad(true);
applicableDeviceType.setIPhoneAndIPod(true);
mobileApp.setApplicableDeviceType(applicableDeviceType);
IosMinimumOperatingSystem minimumSupportedOperatingSystem = new IosMinimumOperatingSystem();
minimumSupportedOperatingSystem.setOdataType("microsoft.graph.iosMinimumOperatingSystem");
minimumSupportedOperatingSystem.setV80(true);
minimumSupportedOperatingSystem.setV90(true);
minimumSupportedOperatingSystem.setV100(true);
minimumSupportedOperatingSystem.setV110(true);
minimumSupportedOperatingSystem.setV120(true);
minimumSupportedOperatingSystem.setV130(true);
minimumSupportedOperatingSystem.setV140(true);
minimumSupportedOperatingSystem.setV150(true);
mobileApp.setMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem);
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-12-31T23:57:57.2481234-08:00");
mobileApp.setExpirationDateTime(expirationDateTime);
mobileApp.setVersionNumber("Version Number value");
mobileApp.setBuildNumber("Build Number value");
MobileApp result = graphClient.deviceAppManagement().mobileApps().byMobileAppId("{mobileApp-id}").patch(mobileApp);


```