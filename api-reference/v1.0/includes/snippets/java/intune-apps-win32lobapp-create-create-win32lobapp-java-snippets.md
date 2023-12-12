---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Win32LobApp mobileApp = new Win32LobApp();
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
mobileApp.installCommandLine = "Install Command Line value";
mobileApp.uninstallCommandLine = "Uninstall Command Line value";
mobileApp.applicableArchitectures = EnumSet.of(WindowsArchitecture.X86);
mobileApp.minimumFreeDiskSpaceInMB = 8;
mobileApp.minimumMemoryInMB = 1;
mobileApp.minimumNumberOfProcessors = 9;
mobileApp.minimumCpuSpeedInMHz = 4;
LinkedList<Win32LobAppRule> rulesList = new LinkedList<Win32LobAppRule>();
Win32LobAppRegistryRule rules = new Win32LobAppRegistryRule();
rules.ruleType = Win32LobAppRuleType.REQUIREMENT;
rules.check32BitOn64System = true;
rules.keyPath = "Key Path value";
rules.valueName = "Value Name value";
rules.operationType = Win32LobAppFileSystemOperationType.EXISTS;
rules.operator = Win32LobAppRuleOperator.EQUAL;
rules.comparisonValue = "Comparison Value value";
rulesList.add(rules);
mobileApp.rules = rulesList;
Win32LobAppInstallExperience installExperience = new Win32LobAppInstallExperience();
installExperience.runAsAccount = RunAsAccountType.USER;
installExperience.deviceRestartBehavior = Win32LobAppRestartBehavior.ALLOW;
mobileApp.installExperience = installExperience;
LinkedList<Win32LobAppReturnCode> returnCodesList = new LinkedList<Win32LobAppReturnCode>();
Win32LobAppReturnCode returnCodes = new Win32LobAppReturnCode();
returnCodes.returnCode = 10;
returnCodes.type = Win32LobAppReturnCodeType.SUCCESS;
returnCodesList.add(returnCodes);
mobileApp.returnCodes = returnCodesList;
Win32LobAppMsiInformation msiInformation = new Win32LobAppMsiInformation();
msiInformation.productCode = "Product Code value";
msiInformation.productVersion = "Product Version value";
msiInformation.upgradeCode = "Upgrade Code value";
msiInformation.requiresReboot = true;
msiInformation.packageType = Win32LobAppMsiPackageType.PER_USER;
msiInformation.productName = "Product Name value";
msiInformation.publisher = "Publisher value";
mobileApp.msiInformation = msiInformation;
mobileApp.setupFilePath = "Setup File Path value";
mobileApp.minimumSupportedWindowsRelease = "Minimum Supported Windows Release value";

graphClient.deviceAppManagement().mobileApps()
	.buildRequest()
	.post(mobileApp);

```