---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Simulation;
use Microsoft\Graph\Generated\Models\EmailIdentity;
use Microsoft\Graph\Generated\Models\SimulationAttackTechnique;
use Microsoft\Graph\Generated\Models\SimulationStatus;
use Microsoft\Graph\Generated\Models\AddressBookAccountTargetContent;
use Microsoft\Graph\Generated\Models\AccountTargetContentType;
use Microsoft\Graph\Generated\Models\TrainingSetting;
use Microsoft\Graph\Generated\Models\TrainingSettingType;
use Microsoft\Graph\Generated\Models\EndUserNotificationSetting;
use Microsoft\Graph\Generated\Models\EndUserNotificationPreference;
use Microsoft\Graph\Generated\Models\EndUserNotificationSettingType;
use Microsoft\Graph\Generated\Models\PositiveReinforcementNotification;
use Microsoft\Graph\Generated\Models\NotificationDeliveryPreference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Simulation();
$requestBody->setDisplayName('Graph Simulation');
$createdBy = new EmailIdentity();
$createdBy->setEmail('john@contoso.com');
$requestBody->setCreatedBy($createdBy);
$requestBody->setDurationInDays(3);
$requestBody->setAttackTechnique(new SimulationAttackTechnique('credentialHarvesting'));
$requestBody->setStatus(new SimulationStatus('scheduled'));
$includedAccountTarget = new AddressBookAccountTargetContent();
$includedAccountTarget->setOdataType('#microsoft.graph.addressBookAccountTargetContent');
$includedAccountTarget->setType(new AccountTargetContentType('addressBook'));
$includedAccountTarget->setAccountTargetEmails(['john@contoso.com', 	]);
$requestBody->setIncludedAccountTarget($includedAccountTarget);
$trainingSetting = new TrainingSetting();
$trainingSetting->setSettingType(new TrainingSettingType('noTraining'));
$requestBody->setTrainingSetting($trainingSetting);
$endUserNotificationSetting = new EndUserNotificationSetting();
$endUserNotificationSetting->setNotificationPreference(new EndUserNotificationPreference('microsoft'));
$endUserNotificationSetting->setSettingType(new EndUserNotificationSettingType('noTraining'));
$endUserNotificationSettingPositiveReinforcement = new PositiveReinforcementNotification();
$endUserNotificationSettingPositiveReinforcement->setDeliveryPreference(new NotificationDeliveryPreference('deliverAfterCampaignEnd'));
$endUserNotificationSettingPositiveReinforcement->setDefaultLanguage('en');
$additionalData = [
	'endUserNotification@odata.bind' => 'https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a',
];
$endUserNotificationSettingPositiveReinforcement->setAdditionalData($additionalData);
$endUserNotificationSetting->setPositiveReinforcement($endUserNotificationSettingPositiveReinforcement);
$additionalData = [
	'simulationNotification' => [
		'targettedUserType' => 'compromised',
		'endUserNotification@odata.bind' => 'https://graph.microsoft.com/v1.0/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a',
		'defaultLanguage' => 'en',
	],
];
$endUserNotificationSetting->setAdditionalData($additionalData);
$requestBody->setEndUserNotificationSetting($endUserNotificationSetting);
$additionalData = [
	'payload@odata.bind' => 'https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a',
	'loginPage@odata.bind' => 'https://graph.microsoft.com/v1.0/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a',
	'landingPage@odata.bind' => 'https://graph.microsoft.com/v1.0/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->attackSimulation()->simulations()->post($requestBody)->wait();

```