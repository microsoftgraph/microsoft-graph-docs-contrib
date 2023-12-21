---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WindowsAppX mobileApp = new WindowsAppX();
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
mobileApp.applicableArchitectures = EnumSet.of(WindowsArchitecture.X86);
mobileApp.identityName = "Identity Name value";
mobileApp.identityPublisherHash = "Identity Publisher Hash value";
mobileApp.identityResourceIdentifier = "Identity Resource Identifier value";
mobileApp.isBundle = true;
WindowsMinimumOperatingSystem minimumSupportedOperatingSystem = new WindowsMinimumOperatingSystem();
minimumSupportedOperatingSystem.v8_0 = true;
minimumSupportedOperatingSystem.v8_1 = true;
minimumSupportedOperatingSystem.v10_0 = true;
mobileApp.minimumSupportedOperatingSystem = minimumSupportedOperatingSystem;
mobileApp.identityVersion = "Identity Version value";

graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.patch(mobileApp);

```