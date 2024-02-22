---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedAndroidStoreApp mobileApp = new ManagedAndroidStoreApp();
mobileApp.setOdataType("#microsoft.graph.managedAndroidStoreApp");
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
mobileApp.setPackageId("Package Id value");
mobileApp.setAppStoreUrl("https://example.com/appStoreUrl/");
AndroidMinimumOperatingSystem minimumSupportedOperatingSystem = new AndroidMinimumOperatingSystem();
minimumSupportedOperatingSystem.setOdataType("microsoft.graph.androidMinimumOperatingSystem");
minimumSupportedOperatingSystem.setV40(true);
minimumSupportedOperatingSystem.setV403(true);
minimumSupportedOperatingSystem.setV41(true);
minimumSupportedOperatingSystem.setV42(true);
minimumSupportedOperatingSystem.setV43(true);
minimumSupportedOperatingSystem.setV44(true);
minimumSupportedOperatingSystem.setV50(true);
minimumSupportedOperatingSystem.setV51(true);
minimumSupportedOperatingSystem.setV60(true);
minimumSupportedOperatingSystem.setV70(true);
minimumSupportedOperatingSystem.setV71(true);
minimumSupportedOperatingSystem.setV80(true);
minimumSupportedOperatingSystem.setV81(true);
minimumSupportedOperatingSystem.setV90(true);
minimumSupportedOperatingSystem.setV100(true);
minimumSupportedOperatingSystem.setV110(true);
mobileApp.setMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem);
MobileApp result = graphClient.deviceAppManagement().mobileApps().post(mobileApp);


```