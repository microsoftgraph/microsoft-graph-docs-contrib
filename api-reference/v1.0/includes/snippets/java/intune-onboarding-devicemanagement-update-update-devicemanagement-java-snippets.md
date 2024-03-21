---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagement deviceManagement = new DeviceManagement();
deviceManagement.setOdataType("#microsoft.graph.deviceManagement");
IntuneBrand intuneBrand = new IntuneBrand();
intuneBrand.setOdataType("microsoft.graph.intuneBrand");
intuneBrand.setDisplayName("Display Name value");
RgbColor themeColor = new RgbColor();
themeColor.setOdataType("microsoft.graph.rgbColor");
themeColor.setR(1);
themeColor.setG(1);
themeColor.setB(1);
intuneBrand.setThemeColor(themeColor);
intuneBrand.setShowLogo(true);
MimeContent lightBackgroundLogo = new MimeContent();
lightBackgroundLogo.setOdataType("microsoft.graph.mimeContent");
lightBackgroundLogo.setType("Type value");
byte[] value = Base64.getDecoder().decode("dmFsdWU=");
lightBackgroundLogo.setValue(value);
intuneBrand.setLightBackgroundLogo(lightBackgroundLogo);
MimeContent darkBackgroundLogo = new MimeContent();
darkBackgroundLogo.setOdataType("microsoft.graph.mimeContent");
darkBackgroundLogo.setType("Type value");
byte[] value1 = Base64.getDecoder().decode("dmFsdWU=");
darkBackgroundLogo.setValue(value1);
intuneBrand.setDarkBackgroundLogo(darkBackgroundLogo);
intuneBrand.setShowNameNextToLogo(true);
intuneBrand.setShowDisplayNameNextToLogo(true);
intuneBrand.setContactITName("Contact ITName value");
intuneBrand.setContactITPhoneNumber("Contact ITPhone Number value");
intuneBrand.setContactITEmailAddress("Contact ITEmail Address value");
intuneBrand.setContactITNotes("Contact ITNotes value");
intuneBrand.setOnlineSupportSiteUrl("https://example.com/onlineSupportSiteUrl/");
intuneBrand.setOnlineSupportSiteName("Online Support Site Name value");
intuneBrand.setPrivacyUrl("https://example.com/privacyUrl/");
deviceManagement.setIntuneBrand(intuneBrand);
DeviceManagement result = graphClient.deviceManagement().patch(deviceManagement);


```