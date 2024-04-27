---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TrainingCampaign;
use Microsoft\Graph\Generated\Models\EmailIdentity;
use Microsoft\Graph\Generated\Models\AccountTargetContent;
use Microsoft\Graph\Generated\Models\EndUserNotificationSetting;
use Microsoft\Graph\Generated\Models\TrainingSetting;
use Microsoft\Graph\Generated\Models\CampaignSchedule;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TrainingCampaign();
$requestBody->setDisplayName('Graph Training Campaign');
$requestBody->setDescription('Graph Training Campaign Description');
$createdBy = new EmailIdentity();
$createdBy->setEmail('john@contoso.com');
$requestBody->setCreatedBy($createdBy);
$lastModifiedBy = new EmailIdentity();
$lastModifiedBy->setEmail('john@contoso.com');
$requestBody->setLastModifiedBy($lastModifiedBy);
$includedAccountTarget = new AccountTargetContent();
$includedAccountTarget->setType(new AccountTargetContentType('addressBook'));
$additionalData = [
	'accountTargetEmails' => [
'john@contoso.com', ],
];
$includedAccountTarget->setAdditionalData($additionalData);
$requestBody->setIncludedAccountTarget($includedAccountTarget);
$endUserNotificationSetting = new EndUserNotificationSetting();
$endUserNotificationSetting->setNotificationPreference(new EndUserNotificationPreference('microsoft'));
$endUserNotificationSetting->setSettingType(new EndUserNotificationSettingType('trainingSelected'));
$additionalData = [
	'trainingReminder' => [
		'deliveryFrequency' => 'weekly',
		'endUserNotification@odata.bind' => 'https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications(\'fe521249-9901-4584-a987-026a9980c58e\')',
		'defaultLanguage' => 'en',
	],
	'trainingAssignment' => [
		'endUserNotification@odata.bind' => 'https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications(\'36fb4dc1-7c37-4b96-9096-12e6d6014fae\')',
		'defaultLanguage' => 'en',
	],
];
$endUserNotificationSetting->setAdditionalData($additionalData);
$requestBody->setEndUserNotificationSetting($endUserNotificationSetting);
$trainingSetting = new TrainingSetting();
$trainingSetting->setSettingType(new TrainingSettingType('microsoftCustom'));
$additionalData = [
	'trainingAssignmentMappings' => [
			[
				'assignedTo' => [
'allUsers', ],
				'training@odata.bind' => 'https://graph.microsoft.com/beta/security/attackSimulation/trainings(\'40454905-dc26-4f36-b854-3042a5362cb3\')',
			],
			[
				'assignedTo' => [
'allUsers', ],
				'training@odata.bind' => 'https://graph.microsoft.com/beta/security/attackSimulation/trainings(\'ea70ae06-3859-4818-be9d-270ee81d80a4\')',
			],
			[
				'assignedTo' => [
'allUsers', ],
				'training@odata.bind' => 'https://graph.microsoft.com/beta/security/attackSimulation/trainings(\'d733d88c-1b5a-48e3-a588-9910e41ac21d\')',
			],
		],
];
$trainingSetting->setAdditionalData($additionalData);
$requestBody->setTrainingSetting($trainingSetting);
$campaignSchedule = new CampaignSchedule();
$campaignSchedule->setLaunchDateTime(new \DateTime('2024-02-15T07:59:44Z'));
$campaignSchedule->setCompletionDateTime(new \DateTime('2024-02-18T07:59:44Z'));
$campaignSchedule->setStatus(new CampaignStatus('scheduled'));
$requestBody->setCampaignSchedule($campaignSchedule);

$result = $graphServiceClient->security()->attackSimulation()->trainingCampaigns()->post($requestBody)->wait();

```