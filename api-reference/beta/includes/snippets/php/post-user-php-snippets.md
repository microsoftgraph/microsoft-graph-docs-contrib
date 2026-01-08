---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\UserProvisioningFlow;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\UserManagementOptions;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AdditionalUserAttributes;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\AdditionalUserOptions;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\StudentAgeGroup;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\UserCreationOptions;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\UserConfiguration;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\SimplePasswordSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserProvisioningFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.userProvisioningFlow');
$requestBody->setCreateUnmatchedUsers(true);
$managementOptions = new UserManagementOptions();
$managementOptions->setAdditionalAttributes([new AdditionalUserAttributes('userGradeLevel'),	]);
$managementOptionsAdditionalOptions = new AdditionalUserOptions();
$managementOptionsAdditionalOptions->setStudentAgeGroup(new StudentAgeGroup('minor'));
$managementOptionsAdditionalOptions->setAllowStudentContactAssociation(false);
$managementOptions->setAdditionalOptions($managementOptionsAdditionalOptions);
$requestBody->setManagementOptions($managementOptions);
$creationOptions = new UserCreationOptions();
$configurationsUserConfiguration1 = new UserConfiguration();
$configurationsUserConfiguration1DefaultPasswordSettings = new SimplePasswordSettings();
$configurationsUserConfiguration1DefaultPasswordSettings->setOdataType('#microsoft.graph.industryData.simplePasswordSettings');
$configurationsUserConfiguration1DefaultPasswordSettings->setPassword('********');
$configurationsUserConfiguration1->setDefaultPasswordSettings($configurationsUserConfiguration1DefaultPasswordSettings);
$configurationsUserConfiguration1->setLicenseSkus(['Sku1', 	]);
$additionalData = [
	'roleGroup@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/roleGroups/staff',
];
$configurationsUserConfiguration1->setAdditionalData($additionalData);
$configurationsArray []= $configurationsUserConfiguration1;
$configurationsUserConfiguration2 = new UserConfiguration();
$configurationsUserConfiguration2DefaultPasswordSettings = new SimplePasswordSettings();
$configurationsUserConfiguration2DefaultPasswordSettings->setOdataType('#microsoft.graph.industryData.simplePasswordSettings');
$configurationsUserConfiguration2DefaultPasswordSettings->setPassword('********');
$configurationsUserConfiguration2->setDefaultPasswordSettings($configurationsUserConfiguration2DefaultPasswordSettings);
$configurationsUserConfiguration2->setLicenseSkus(['Sku2', 	]);
$additionalData = [
	'roleGroup@odata.bind' => 'https://graph.microsoft.com/beta/external/industryData/roleGroups/students',
];
$configurationsUserConfiguration2->setAdditionalData($additionalData);
$configurationsArray []= $configurationsUserConfiguration2;
$creationOptions->setConfigurations($configurationsArray);

$requestBody->setCreationOptions($creationOptions);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->byOutboundProvisioningFlowSetId('outboundProvisioningFlowSet-id')->provisioningFlows()->post($requestBody)->wait();

```