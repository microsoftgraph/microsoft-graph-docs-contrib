---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MicrosoftStoreForBusinessApp mobileApp = new MicrosoftStoreForBusinessApp();
mobileApp.setOdataType("#microsoft.graph.microsoftStoreForBusinessApp");
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
mobileApp.setProductKey("Product Key value");
mobileApp.setLicenseType(MicrosoftStoreForBusinessLicenseType.Online);
mobileApp.setPackageIdentityName("Package Identity Name value");
MobileApp result = graphClient.deviceAppManagement().mobileApps().post(mobileApp);


```