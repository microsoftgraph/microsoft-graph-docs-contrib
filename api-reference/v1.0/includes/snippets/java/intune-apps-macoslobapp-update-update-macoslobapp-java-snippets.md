---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MacOSLobApp mobileApp = new MacOSLobApp();
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
mobileApp.bundleId = "Bundle Id value";
MacOSMinimumOperatingSystem minimumSupportedOperatingSystem = new MacOSMinimumOperatingSystem();
minimumSupportedOperatingSystem.v10_7 = true;
minimumSupportedOperatingSystem.v10_8 = true;
minimumSupportedOperatingSystem.v10_9 = true;
minimumSupportedOperatingSystem.v10_10 = true;
minimumSupportedOperatingSystem.v10_11 = true;
minimumSupportedOperatingSystem.v10_12 = true;
minimumSupportedOperatingSystem.v10_13 = true;
minimumSupportedOperatingSystem.v10_14 = true;
minimumSupportedOperatingSystem.v10_15 = true;
minimumSupportedOperatingSystem.v11_0 = true;
minimumSupportedOperatingSystem.v12_0 = true;
minimumSupportedOperatingSystem.v13_0 = true;
mobileApp.minimumSupportedOperatingSystem = minimumSupportedOperatingSystem;
mobileApp.buildNumber = "Build Number value";
mobileApp.versionNumber = "Version Number value";
LinkedList<MacOSLobChildApp> childAppsList = new LinkedList<MacOSLobChildApp>();
MacOSLobChildApp childApps = new MacOSLobChildApp();
childApps.bundleId = "Bundle Id value";
childApps.buildNumber = "Build Number value";
childApps.versionNumber = "Version Number value";
childAppsList.add(childApps);
mobileApp.childApps = childAppsList;
mobileApp.md5HashChunkSize = 0;
LinkedList<String> md5HashList = new LinkedList<String>();
md5HashList.add("Md5Hash value");
mobileApp.md5Hash = md5HashList;
mobileApp.ignoreVersionDetection = true;
mobileApp.installAsManaged = true;

graphClient.deviceAppManagement().mobileApps("{mobileAppId}")
	.buildRequest()
	.patch(mobileApp);

```