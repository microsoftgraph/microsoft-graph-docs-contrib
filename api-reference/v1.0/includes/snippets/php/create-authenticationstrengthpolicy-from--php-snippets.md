---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthenticationStrengthPolicy;
use Microsoft\Graph\Generated\Models\AuthenticationStrengthRequirements;
use Microsoft\Graph\Generated\Models\AuthenticationMethodModes;
use Microsoft\Graph\Generated\Models\AuthenticationCombinationConfiguration;
use Microsoft\Graph\Generated\Models\Fido2CombinationConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationStrengthPolicy();
$requestBody->setDisplayName('Example');
$requestBody->setRequirementsSatisfied(new AuthenticationStrengthRequirements('mfa'));
$requestBody->setAllowedCombinations([new AuthenticationMethodModes('fido2'),	]);
$combinationConfigurationsAuthenticationCombinationConfiguration1 = new Fido2CombinationConfiguration();
$combinationConfigurationsAuthenticationCombinationConfiguration1->setOdataType('#microsoft.graph.fido2CombinationConfiguration');
$combinationConfigurationsAuthenticationCombinationConfiguration1->setId('42235320-c8db-4d8c-9344-8f1ce87f734b');
$combinationConfigurationsAuthenticationCombinationConfiguration1->setAppliesToCombinations([new AuthenticationMethodModes('fido2'),	]);
$combinationConfigurationsAuthenticationCombinationConfiguration1->setAllowedAAGUIDs(['de1e552d-db1d-4423-a619-566b625cdc84', '90a3ccdf-635c-4729-a248-9b709135078f', 	]);
$combinationConfigurationsArray []= $combinationConfigurationsAuthenticationCombinationConfiguration1;
$requestBody->setCombinationConfigurations($combinationConfigurationsArray);

$additionalData = [
'combinationConfigurations@odata.context' => 'https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies(\'5790842a-5bab-44c2-9cf1-b38d675b70ea\')/combinationConfigurations',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->authenticationStrengthPolicies()->post($requestBody)->wait();

```