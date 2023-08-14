---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Windows10TeamGeneralConfiguration();
$requestBody->setOdataType('#microsoft.graph.windows10TeamGeneralConfiguration');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$requestBody->setVersion(7);

$requestBody->setAzureOperationalInsightsBlockTelemetry(true);

$requestBody->setAzureOperationalInsightsWorkspaceId('Azure Operational Insights Workspace Id value');

$requestBody->setAzureOperationalInsightsWorkspaceKey('Azure Operational Insights Workspace Key value');

$requestBody->setConnectAppBlockAutoLaunch(true);

$requestBody->setMaintenanceWindowBlocked(true);

$requestBody->setMaintenanceWindowDurationInHours(0);

$requestBody->setMaintenanceWindowStartTime(new Time('11:59:09.3130000'));

$requestBody->setMiracastChannel(new MiracastChannel('one'));

$requestBody->setMiracastBlocked(true);

$requestBody->setMiracastRequirePin(true);

$requestBody->setSettingsBlockMyMeetingsAndFiles(true);

$requestBody->setSettingsBlockSessionResume(true);

$requestBody->setSettingsBlockSigninSuggestions(true);

$requestBody->setSettingsDefaultVolume(5);

$requestBody->setSettingsScreenTimeoutInMinutes(14);

$requestBody->setSettingsSessionTimeoutInMinutes(15);

$requestBody->setSettingsSleepTimeoutInMinutes(13);

$requestBody->setWelcomeScreenBlockAutomaticWakeUp(true);

$requestBody->setWelcomeScreenBackgroundImageUrl('https://example.com/welcomeScreenBackgroundImageUrl/');

$requestBody->setWelcomeScreenMeetingInformation(new WelcomeScreenMeetingInformation('showOrganizerAndTimeOnly'));



$result = $graphServiceClient->deviceManagement()->deviceConfigurations()->post($requestBody);


```