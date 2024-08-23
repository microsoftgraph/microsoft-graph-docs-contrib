---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Win32LobApp mobileApp = new Win32LobApp();
mobileApp.setOdataType("#microsoft.graph.win32LobApp");
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
mobileApp.setInstallCommandLine("Install Command Line value");
mobileApp.setUninstallCommandLine("Uninstall Command Line value");
mobileApp.setApplicableArchitectures(EnumSet.of(WindowsArchitecture.X86));
mobileApp.setMinimumFreeDiskSpaceInMB(8);
mobileApp.setMinimumMemoryInMB(1);
mobileApp.setMinimumNumberOfProcessors(9);
mobileApp.setMinimumCpuSpeedInMHz(4);
LinkedList<Win32LobAppRule> rules = new LinkedList<Win32LobAppRule>();
Win32LobAppRegistryRule win32LobAppRule = new Win32LobAppRegistryRule();
win32LobAppRule.setOdataType("microsoft.graph.win32LobAppRegistryRule");
win32LobAppRule.setRuleType(Win32LobAppRuleType.Requirement);
win32LobAppRule.setCheck32BitOn64System(true);
win32LobAppRule.setKeyPath("Key Path value");
win32LobAppRule.setValueName("Value Name value");
win32LobAppRule.setOperationType(Win32LobAppRegistryRuleOperationType.Exists);
win32LobAppRule.setOperator(Win32LobAppRuleOperator.Equal);
win32LobAppRule.setComparisonValue("Comparison Value value");
rules.add(win32LobAppRule);
mobileApp.setRules(rules);
Win32LobAppInstallExperience installExperience = new Win32LobAppInstallExperience();
installExperience.setOdataType("microsoft.graph.win32LobAppInstallExperience");
installExperience.setRunAsAccount(RunAsAccountType.User);
installExperience.setDeviceRestartBehavior(Win32LobAppRestartBehavior.Allow);
mobileApp.setInstallExperience(installExperience);
LinkedList<Win32LobAppReturnCode> returnCodes = new LinkedList<Win32LobAppReturnCode>();
Win32LobAppReturnCode win32LobAppReturnCode = new Win32LobAppReturnCode();
win32LobAppReturnCode.setOdataType("microsoft.graph.win32LobAppReturnCode");
win32LobAppReturnCode.setReturnCode(10);
win32LobAppReturnCode.setType(Win32LobAppReturnCodeType.Success);
returnCodes.add(win32LobAppReturnCode);
mobileApp.setReturnCodes(returnCodes);
Win32LobAppMsiInformation msiInformation = new Win32LobAppMsiInformation();
msiInformation.setOdataType("microsoft.graph.win32LobAppMsiInformation");
msiInformation.setProductCode("Product Code value");
msiInformation.setProductVersion("Product Version value");
msiInformation.setUpgradeCode("Upgrade Code value");
msiInformation.setRequiresReboot(true);
msiInformation.setPackageType(Win32LobAppMsiPackageType.PerUser);
msiInformation.setProductName("Product Name value");
msiInformation.setPublisher("Publisher value");
mobileApp.setMsiInformation(msiInformation);
mobileApp.setSetupFilePath("Setup File Path value");
mobileApp.setMinimumSupportedWindowsRelease("Minimum Supported Windows Release value");
MobileApp result = graphClient.deviceAppManagement().mobileApps().post(mobileApp);


```