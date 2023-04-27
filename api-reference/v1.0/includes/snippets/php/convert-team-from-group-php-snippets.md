---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Team();
$channelsChannel1 = new Channel();
$channelsChannel1->setDisplayName('Class Announcements 📢');

$channelsChannel1->setIsFavoriteByDefault(true);


$channelsArray []= $channelsChannel1;
$channelsChannel2 = new Channel();
$channelsChannel2->setDisplayName('Homework 🏋️');

$channelsChannel2->setIsFavoriteByDefault(true);


$channelsArray []= $channelsChannel2;
$requestBody->setChannels($channelsArray);


$memberSettings = new TeamMemberSettings();
$memberSettings->setAllowCreateUpdateChannels(false);

$memberSettings->setAllowDeleteChannels(false);

$memberSettings->setAllowAddRemoveApps(false);

$memberSettings->setAllowCreateUpdateRemoveTabs(false);

$memberSettings->setAllowCreateUpdateRemoveConnectors(false);


$requestBody->setMemberSettings($memberSettings);
$installedAppsTeamsAppInstallation1 = new TeamsAppInstallation();
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.vsts\')', 
];
$installedAppsTeamsAppInstallation1->setAdditionalData($additionalData);



$installedAppsArray []= $installedAppsTeamsAppInstallation1;
$installedAppsTeamsAppInstallation2 = new TeamsAppInstallation();
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'1542629c-01b3-4a6d-8f76-1938b779e48d\')', 
];
$installedAppsTeamsAppInstallation2->setAdditionalData($additionalData);



$installedAppsArray []= $installedAppsTeamsAppInstallation2;
$requestBody->setInstalledApps($installedAppsArray);


$additionalData = [
'template@odata.bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'standard\')', 
'group@odata.bind' => 'https://graph.microsoft.com/v1.0/groups(\'dbd8de4f-5d47-48da-87f1-594bed003375\')', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->post($requestBody);


```