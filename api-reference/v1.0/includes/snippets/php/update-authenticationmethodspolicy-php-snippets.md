---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationMethodsPolicy();
$registrationEnforcement = new RegistrationEnforcement();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setSnoozeDurationInDays(1);

$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setState(new AdvancedConfigState('enabled'));

$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setExcludeTargets([]);

$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1 = new AuthenticationMethodsRegistrationCampaignIncludeTarget();
$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setId('3ee3a9de-0a86-4e12-a287-9769accf1ba2');

$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setTargetType(new AuthenticationMethodTargetType('group'));

$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setTargetedAuthenticationMethod('microsoftAuthenticator');


$includeTargetsArray []= $includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1;
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setIncludeTargets($includeTargetsArray);



$registrationEnforcement->setAuthenticationMethodsRegistrationCampaign($registrationEnforcementAuthenticationMethodsRegistrationCampaign);

$requestBody->setRegistrationEnforcement($registrationEnforcement);
$authenticationMethodConfigurationsAuthenticationMethodConfiguration1 = new AuthenticationMethodConfiguration();
$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->set@odatatype('#microsoft.graph.fido2AuthenticationMethodConfiguration');

$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setId('Fido2');

$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setState(new AuthenticationMethodState('disabled'));

$additionalData = [
'isSelfServiceRegistrationAllowed' => false,
'isAttestationEnforced' => false,
'keyRestrictions' => $authenticationMethodConfigurationsAuthenticationMethodConfiguration1 = new KeyRestrictions();
$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setIsEnforced(false);

$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setEnforcementType('block');

$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setAaGuids([]);


$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setKeyRestrictions($keyRestrictions);

];
$authenticationMethodConfigurationsAuthenticationMethodConfiguration1->setAdditionalData($additionalData);



$authenticationMethodConfigurationsArray []= $authenticationMethodConfigurationsAuthenticationMethodConfiguration1;
$requestBody->setAuthenticationMethodConfigurations($authenticationMethodConfigurationsArray);


$additionalData = [
'@odata.context' => 'https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->policies()->authenticationMethodsPolicy()->patch($requestBody);


```