---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthenticationMethodsPolicy;
use Microsoft\Graph\Generated\Models\RegistrationEnforcement;
use Microsoft\Graph\Generated\Models\AuthenticationMethodsRegistrationCampaign;
use Microsoft\Graph\Generated\Models\ExcludeTarget;
use Microsoft\Graph\Generated\Models\AuthenticationMethodsRegistrationCampaignIncludeTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationMethodsPolicy();
$registrationEnforcement = new RegistrationEnforcement();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setSnoozeDurationInDays(1);
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setState(new AdvancedConfigState('enabled'));
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setExcludeTargets([	]);
$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1 = new AuthenticationMethodsRegistrationCampaignIncludeTarget();
$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setId('3ee3a9de-0a86-4e12-a287-9769accf1ba2');
$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1->setTargetedAuthenticationMethod('microsoftAuthenticator');
$includeTargetsArray []= $includeTargetsAuthenticationMethodsRegistrationCampaignIncludeTarget1;
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setIncludeTargets($includeTargetsArray);

$registrationEnforcement->setAuthenticationMethodsRegistrationCampaign($registrationEnforcementAuthenticationMethodsRegistrationCampaign);
$requestBody->setRegistrationEnforcement($registrationEnforcement);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->patch($requestBody)->wait();

```