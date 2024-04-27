---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UserProvisioningFlow;
use Microsoft\Graph\Generated\Models\UserManagementOptions;
use Microsoft\Graph\Generated\Models\AdditionalUserAttributes;
use Microsoft\Graph\Generated\Models\AdditionalUserOptions;
use Microsoft\Graph\Generated\Models\UserCreationOptions;
use Microsoft\Graph\Generated\Models\UserConfiguration;
use Microsoft\Graph\Generated\Models\SimplePasswordSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UserProvisioningFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.userProvisioningFlow');
$requestBody->setCreateUnmatchedUsers(true);
$managementOptions = new UserManagementOptions();
$managementOptions->setAdditionalAttributes([new AdditionalUserAttributes('userGradeLevel'),	]);
$managementOptionsAdditionalOptions = new AdditionalUserOptions();
$managementOptionsAdditionalOptions->setMarkAllStudentsAsMinors(true);
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