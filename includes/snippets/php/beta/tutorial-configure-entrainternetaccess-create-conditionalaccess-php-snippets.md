---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessPolicy;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessConditionSet;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessApplications;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessUsers;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessSessionControls;
use Microsoft\Graph\Beta\Generated\Models\GlobalSecureAccessFilteringProfileSessionControl;
use Microsoft\Graph\Beta\Generated\Models\ConditionalAccessPolicyState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConditionalAccessPolicy();
$conditions = new ConditionalAccessConditionSet();
$conditionsApplications = new ConditionalAccessApplications();
$conditionsApplications->setIncludeApplications(['5dc48733-b5df-475c-a49b-fa307ef00853', 	]);
$conditions->setApplications($conditionsApplications);
$conditionsUsers = new ConditionalAccessUsers();
$conditionsUsers->setIncludeUsers(['00aa00aa-bb11-cc22-dd33-44ee44ee44ee', 	]);
$conditions->setUsers($conditionsUsers);
$requestBody->setConditions($conditions);
$requestBody->setDisplayName('UserA Access to AI and Bing');
$sessionControls = new ConditionalAccessSessionControls();
$sessionControlsGlobalSecureAccessFilteringProfile = new GlobalSecureAccessFilteringProfileSessionControl();
$sessionControlsGlobalSecureAccessFilteringProfile->setProfileId('dddddddd-9999-0000-1111-eeeeeeeeeeee');
$sessionControlsGlobalSecureAccessFilteringProfile->setIsEnabled(true);
$sessionControls->setGlobalSecureAccessFilteringProfile($sessionControlsGlobalSecureAccessFilteringProfile);
$requestBody->setSessionControls($sessionControls);
$requestBody->setState(new ConditionalAccessPolicyState('enabled'));

$result = $graphServiceClient->identity()->conditionalAccess()->policies()->post($requestBody)->wait();

```