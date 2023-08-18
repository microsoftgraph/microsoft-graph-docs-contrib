---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Win32LobApp();
$requestBody->setOdataType('#microsoft.graph.win32LobApp');

$requestBody->setDisplayName('Display Name value');

$requestBody->setDescription('Description value');

$requestBody->setPublisher('Publisher value');

$largeIcon = new MimeContent();
$largeIcon->setOdataType('microsoft.graph.mimeContent');

$largeIcon->setType('Type value');

$LargeIcon->setValue(base64_decode('dmFsdWU='));


$requestBody->setLargeIcon($largeIcon);
$requestBody->setIsFeatured(true);

$requestBody->setPrivacyInformationUrl('https://example.com/privacyInformationUrl/');

$requestBody->setInformationUrl('https://example.com/informationUrl/');

$requestBody->setOwner('Owner value');

$requestBody->setDeveloper('Developer value');

$requestBody->setNotes('Notes value');

$requestBody->setPublishingState(new MobileAppPublishingState('processing'));

$requestBody->setCommittedContentVersion('Committed Content Version value');

$requestBody->setFileName('File Name value');

$requestBody->setSize(4);

$requestBody->setInstallCommandLine('Install Command Line value');

$requestBody->setUninstallCommandLine('Uninstall Command Line value');

$requestBody->setApplicableArchitectures(new WindowsArchitecture('x86'));

$requestBody->setMinimumFreeDiskSpaceInMB(8);

$requestBody->setMinimumMemoryInMB(1);

$requestBody->setMinimumNumberOfProcessors(9);

$requestBody->setMinimumCpuSpeedInMHz(4);

$rulesWin32LobAppRule1 = new Win32LobAppRegistryRule();
$rulesWin32LobAppRule1->setOdataType('microsoft.graph.win32LobAppRegistryRule');

$rulesWin32LobAppRule1->setRuleType(new Win32LobAppRuleType('requirement'));

$rulesWin32LobAppRule1->setCheck32BitOn64System(true);

$rulesWin32LobAppRule1->setKeyPath('Key Path value');

$rulesWin32LobAppRule1->setValueName('Value Name value');

$rulesWin32LobAppRule1->setOperationType(new Win32LobAppRegistryRuleOperationType('exists'));

$rulesWin32LobAppRule1->setOperator(new Win32LobAppRuleOperator('equal'));

$rulesWin32LobAppRule1->setComparisonValue('Comparison Value value');


$rulesArray []= $rulesWin32LobAppRule1;
$requestBody->setRules($rulesArray);


$installExperience = new Win32LobAppInstallExperience();
$installExperience->setOdataType('microsoft.graph.win32LobAppInstallExperience');

$installExperience->setRunAsAccount(new RunAsAccountType('user'));

$installExperience->setDeviceRestartBehavior(new Win32LobAppRestartBehavior('allow'));


$requestBody->setInstallExperience($installExperience);
$returnCodesWin32LobAppReturnCode1 = new Win32LobAppReturnCode();
$returnCodesWin32LobAppReturnCode1->setOdataType('microsoft.graph.win32LobAppReturnCode');

$returnCodesWin32LobAppReturnCode1->setReturnCode(10);

$returnCodesWin32LobAppReturnCode1->setType(new Win32LobAppReturnCodeType('success'));


$returnCodesArray []= $returnCodesWin32LobAppReturnCode1;
$requestBody->setReturnCodes($returnCodesArray);


$msiInformation = new Win32LobAppMsiInformation();
$msiInformation->setOdataType('microsoft.graph.win32LobAppMsiInformation');

$msiInformation->setProductCode('Product Code value');

$msiInformation->setProductVersion('Product Version value');

$msiInformation->setUpgradeCode('Upgrade Code value');

$msiInformation->setRequiresReboot(true);

$msiInformation->setPackageType(new Win32LobAppMsiPackageType('perUser'));

$msiInformation->setProductName('Product Name value');

$msiInformation->setPublisher('Publisher value');


$requestBody->setMsiInformation($msiInformation);
$requestBody->setSetupFilePath('Setup File Path value');

$requestBody->setMinimumSupportedWindowsRelease('Minimum Supported Windows Release value');



$result = $graphServiceClient->deviceAppManagement()->mobileApps()->byMobileAppId('mobileApp-id')->patch($requestBody);


```