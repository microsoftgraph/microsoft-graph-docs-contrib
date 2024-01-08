---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsMobileMSI mobileApp = new WindowsMobileMSI();
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
mobileApp.commandLine = "Command Line value";
mobileApp.productCode = "Product Code value";
mobileApp.productVersion = "Product Version value";
mobileApp.ignoreVersionDetection = true;

graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.patch(mobileApp);

```