---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsUniversalAppX mobileApp = new WindowsUniversalAppX();
mobileApp.setOdataType("#microsoft.graph.windowsUniversalAppX");
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
mobileApp.setCommittedContentVersion("Committed Content Version value");
mobileApp.setFileName("File Name value");
mobileApp.setSize(4L);
mobileApp.setApplicableArchitectures(EnumSet.of(WindowsArchitecture.X86));
mobileApp.setApplicableDeviceTypes(EnumSet.of(WindowsDeviceType.Desktop));
mobileApp.setIdentityName("Identity Name value");
mobileApp.setIdentityPublisherHash("Identity Publisher Hash value");
mobileApp.setIdentityResourceIdentifier("Identity Resource Identifier value");
mobileApp.setIsBundle(true);
WindowsMinimumOperatingSystem minimumSupportedOperatingSystem = new WindowsMinimumOperatingSystem();
minimumSupportedOperatingSystem.setOdataType("microsoft.graph.windowsMinimumOperatingSystem");
minimumSupportedOperatingSystem.setV80(true);
minimumSupportedOperatingSystem.setV81(true);
minimumSupportedOperatingSystem.setV100(true);
mobileApp.setMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem);
mobileApp.setIdentityVersion("Identity Version value");
MobileApp result = graphClient.deviceAppManagement().mobileApps().byMobileAppId("{mobileApp-id}").patch(mobileApp);


```