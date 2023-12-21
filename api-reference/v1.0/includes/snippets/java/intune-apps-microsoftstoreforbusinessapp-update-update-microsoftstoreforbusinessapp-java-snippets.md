---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MicrosoftStoreForBusinessApp mobileApp = new MicrosoftStoreForBusinessApp();
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
mobileApp.productKey = "Product Key value";
mobileApp.licenseType = MicrosoftStoreForBusinessLicenseType.ONLINE;
mobileApp.packageIdentityName = "Package Identity Name value";

graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.patch(mobileApp);

```