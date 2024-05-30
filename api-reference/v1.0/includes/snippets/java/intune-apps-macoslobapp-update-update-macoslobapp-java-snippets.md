---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MacOSLobApp mobileApp = new MacOSLobApp();
mobileApp.setOdataType("#microsoft.graph.macOSLobApp");
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
mobileApp.setBundleId("Bundle Id value");
MacOSMinimumOperatingSystem minimumSupportedOperatingSystem = new MacOSMinimumOperatingSystem();
minimumSupportedOperatingSystem.setOdataType("microsoft.graph.macOSMinimumOperatingSystem");
minimumSupportedOperatingSystem.setV107(true);
minimumSupportedOperatingSystem.setV108(true);
minimumSupportedOperatingSystem.setV109(true);
minimumSupportedOperatingSystem.setV1010(true);
minimumSupportedOperatingSystem.setV1011(true);
minimumSupportedOperatingSystem.setV1012(true);
minimumSupportedOperatingSystem.setV1013(true);
minimumSupportedOperatingSystem.setV1014(true);
minimumSupportedOperatingSystem.setV1015(true);
minimumSupportedOperatingSystem.setV110(true);
minimumSupportedOperatingSystem.setV120(true);
minimumSupportedOperatingSystem.setV130(true);
mobileApp.setMinimumSupportedOperatingSystem(minimumSupportedOperatingSystem);
mobileApp.setBuildNumber("Build Number value");
mobileApp.setVersionNumber("Version Number value");
LinkedList<MacOSLobChildApp> childApps = new LinkedList<MacOSLobChildApp>();
MacOSLobChildApp macOSLobChildApp = new MacOSLobChildApp();
macOSLobChildApp.setOdataType("microsoft.graph.macOSLobChildApp");
macOSLobChildApp.setBundleId("Bundle Id value");
macOSLobChildApp.setBuildNumber("Build Number value");
macOSLobChildApp.setVersionNumber("Version Number value");
childApps.add(macOSLobChildApp);
mobileApp.setChildApps(childApps);
mobileApp.setMd5HashChunkSize(0);
LinkedList<String> md5Hash = new LinkedList<String>();
md5Hash.add("Md5Hash value");
mobileApp.setMd5Hash(md5Hash);
mobileApp.setIgnoreVersionDetection(true);
mobileApp.setInstallAsManaged(true);
MobileApp result = graphClient.deviceAppManagement().mobileApps().byMobileAppId("{mobileApp-id}").patch(mobileApp);


```