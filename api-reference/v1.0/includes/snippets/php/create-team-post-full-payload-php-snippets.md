---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Team;
use Microsoft\Graph\Generated\Models\TeamVisibilityType;
use Microsoft\Graph\Generated\Models\Channel;
use Microsoft\Graph\Generated\Models\TeamsTab;
use Microsoft\Graph\Generated\Models\TeamsTabConfiguration;
use Microsoft\Graph\Generated\Models\TeamMemberSettings;
use Microsoft\Graph\Generated\Models\TeamGuestSettings;
use Microsoft\Graph\Generated\Models\TeamFunSettings;
use Microsoft\Graph\Generated\Models\GiphyRatingType;
use Microsoft\Graph\Generated\Models\TeamMessagingSettings;
use Microsoft\Graph\Generated\Models\TeamsAppInstallation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Team();
$requestBody->setVisibility(new TeamVisibilityType('private'));
$requestBody->setDisplayName('Sample Engineering Team');
$requestBody->setDescription('This is a sample engineering team, used to showcase the range of properties supported by this API');
$requestBody->setFirstChannelName('My First Channel of the team');
$channelsChannel1 = new Channel();
$channelsChannel1->setDisplayName('Announcements 📢');
$channelsChannel1->setIsFavoriteByDefault(true);
$channelsChannel1->setDescription('This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.');
$channelsArray []= $channelsChannel1;
$channelsChannel2 = new Channel();
$channelsChannel2->setDisplayName('Training 🏋️');
$channelsChannel2->setIsFavoriteByDefault(true);
$channelsChannel2->setDescription('This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.');
$tabsTeamsTab1 = new TeamsTab();
$tabsTeamsTab1->setDisplayName('A Pinned Website');
$tabsTeamsTab1Configuration = new TeamsTabConfiguration();
$tabsTeamsTab1Configuration->setContentUrl('https://learn.microsoft.com/microsoftteams/microsoft-teams');
$tabsTeamsTab1->setConfiguration($tabsTeamsTab1Configuration);
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.web\')',
];
$tabsTeamsTab1->setAdditionalData($additionalData);
$tabsArray []= $tabsTeamsTab1;
$tabsTeamsTab2 = new TeamsTab();
$tabsTeamsTab2->setDisplayName('A Pinned YouTube Video');
$tabsTeamsTab2Configuration = new TeamsTabConfiguration();
$tabsTeamsTab2Configuration->setContentUrl('https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ');
$tabsTeamsTab2Configuration->setWebsiteUrl('https://www.youtube.com/watch?v=X8krAMdGvCQ');
$tabsTeamsTab2->setConfiguration($tabsTeamsTab2Configuration);
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.youtube\')',
];
$tabsTeamsTab2->setAdditionalData($additionalData);
$tabsArray []= $tabsTeamsTab2;
$channelsChannel2->setTabs($tabsArray);

$channelsArray []= $channelsChannel2;
$channelsChannel3 = new Channel();
$channelsChannel3->setDisplayName('Planning 📅 ');
$channelsChannel3->setDescription('This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.');
$channelsChannel3->setIsFavoriteByDefault(false);
$channelsArray []= $channelsChannel3;
$channelsChannel4 = new Channel();
$channelsChannel4->setDisplayName('Issues and Feedback 🐞');
$channelsChannel4->setDescription('This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.');
$channelsArray []= $channelsChannel4;
$requestBody->setChannels($channelsArray);

$memberSettings = new TeamMemberSettings();
$memberSettings->setAllowCreateUpdateChannels(true);
$memberSettings->setAllowDeleteChannels(true);
$memberSettings->setAllowAddRemoveApps(true);
$memberSettings->setAllowCreateUpdateRemoveTabs(true);
$memberSettings->setAllowCreateUpdateRemoveConnectors(true);
$requestBody->setMemberSettings($memberSettings);
$guestSettings = new TeamGuestSettings();
$guestSettings->setAllowCreateUpdateChannels(false);
$guestSettings->setAllowDeleteChannels(false);
$requestBody->setGuestSettings($guestSettings);
$funSettings = new TeamFunSettings();
$funSettings->setAllowGiphy(true);
$funSettings->setGiphyContentRating(new GiphyRatingType('moderate'));
$funSettings->setAllowStickersAndMemes(true);
$funSettings->setAllowCustomMemes(true);
$requestBody->setFunSettings($funSettings);
$messagingSettings = new TeamMessagingSettings();
$messagingSettings->setAllowUserEditMessages(true);
$messagingSettings->setAllowUserDeleteMessages(true);
$messagingSettings->setAllowOwnerDeleteMessages(true);
$messagingSettings->setAllowTeamMentions(true);
$messagingSettings->setAllowChannelMentions(true);
$requestBody->setMessagingSettings($messagingSettings);
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
'discoverySettings' => [
'showInTeamsSearchAndSuggestions' => true,
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->teams()->post($requestBody)->wait();

```