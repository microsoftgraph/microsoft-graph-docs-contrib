---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SourceSystemDefinition();
$requestBody->setDisplayName('Rostering source');

$userMatchingSettingsUserMatchingSetting1 = new UserMatchingSetting();
$userMatchingSettingsUserMatchingSetting1MatchTarget = new UserMatchTargetReferenceValue();
$userMatchingSettingsUserMatchingSetting1MatchTarget->setCode('userPrincipalName');


$userMatchingSettingsUserMatchingSetting1->setMatchTarget($userMatchingSettingsUserMatchingSetting1MatchTarget);
$userMatchingSettingsUserMatchingSetting1->setPriorityOrder(0);

$userMatchingSettingsUserMatchingSetting1SourceIdentifier = new IdentifierTypeReferenceValue();
$userMatchingSettingsUserMatchingSetting1SourceIdentifier->setCode('username');


$userMatchingSettingsUserMatchingSetting1->setSourceIdentifier($userMatchingSettingsUserMatchingSetting1SourceIdentifier);
$additionalData = [
		'roleGroup@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/roleGroups/staff', 
];
$userMatchingSettingsUserMatchingSetting1->setAdditionalData($additionalData);



$userMatchingSettingsArray []= $userMatchingSettingsUserMatchingSetting1;
$userMatchingSettingsUserMatchingSetting2 = new UserMatchingSetting();
$userMatchingSettingsUserMatchingSetting2MatchTarget = new UserMatchTargetReferenceValue();
$userMatchingSettingsUserMatchingSetting2MatchTarget->setCode('userPrincipalName');


$userMatchingSettingsUserMatchingSetting2->setMatchTarget($userMatchingSettingsUserMatchingSetting2MatchTarget);
$userMatchingSettingsUserMatchingSetting2->setPriorityOrder(1);

$userMatchingSettingsUserMatchingSetting2SourceIdentifier = new IdentifierTypeReferenceValue();
$userMatchingSettingsUserMatchingSetting2SourceIdentifier->setCode('username');


$userMatchingSettingsUserMatchingSetting2->setSourceIdentifier($userMatchingSettingsUserMatchingSetting2SourceIdentifier);
$additionalData = [
		'roleGroup@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/roleGroups(\'students\')', 
];
$userMatchingSettingsUserMatchingSetting2->setAdditionalData($additionalData);



$userMatchingSettingsArray []= $userMatchingSettingsUserMatchingSetting2;
$requestBody->setUserMatchingSettings($userMatchingSettingsArray);




$result = $graphServiceClient->external()->industryData()->sourceSystems()->post($requestBody);


```