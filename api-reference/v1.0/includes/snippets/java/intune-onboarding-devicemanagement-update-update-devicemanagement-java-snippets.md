---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagement deviceManagement = new DeviceManagement();
IntuneBrand intuneBrand = new IntuneBrand();
intuneBrand.displayName = "Display Name value";
RgbColor themeColor = new RgbColor();
themeColor.r = 1;
themeColor.g = 1;
themeColor.b = 1;
intuneBrand.themeColor = themeColor;
intuneBrand.showLogo = true;
MimeContent lightBackgroundLogo = new MimeContent();
lightBackgroundLogo.type = "Type value";
lightBackgroundLogo.value = Base64.getDecoder().decode("dmFsdWU=");
intuneBrand.lightBackgroundLogo = lightBackgroundLogo;
MimeContent darkBackgroundLogo = new MimeContent();
darkBackgroundLogo.type = "Type value";
darkBackgroundLogo.value = Base64.getDecoder().decode("dmFsdWU=");
intuneBrand.darkBackgroundLogo = darkBackgroundLogo;
intuneBrand.showNameNextToLogo = true;
intuneBrand.showDisplayNameNextToLogo = true;
intuneBrand.contactITName = "Contact ITName value";
intuneBrand.contactITPhoneNumber = "Contact ITPhone Number value";
intuneBrand.contactITEmailAddress = "Contact ITEmail Address value";
intuneBrand.contactITNotes = "Contact ITNotes value";
intuneBrand.onlineSupportSiteUrl = "https://example.com/onlineSupportSiteUrl/";
intuneBrand.onlineSupportSiteName = "Online Support Site Name value";
intuneBrand.privacyUrl = "https://example.com/privacyUrl/";
deviceManagement.intuneBrand = intuneBrand;

graphClient.deviceManagement()
	.buildRequest()
	.patch(deviceManagement);

```