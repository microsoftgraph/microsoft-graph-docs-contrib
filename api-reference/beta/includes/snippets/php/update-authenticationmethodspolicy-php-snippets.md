---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodsPolicy;
use Microsoft\Graph\Beta\Generated\Models\RegistrationEnforcement;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodsRegistrationCampaign;
use Microsoft\Graph\Beta\Generated\Models\AdvancedConfigState;
use Microsoft\Graph\Beta\Generated\Models\ExcludeTarget;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodsRegistrationCampaignIncludeTarget;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodTargetType;
use Microsoft\Graph\Beta\Generated\Models\ReportSuspiciousActivitySettings;
use Microsoft\Graph\Beta\Generated\Models\IncludeTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthenticationMethodsPolicy();
$registrationEnforcement = new RegistrationEnforcement();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign = new AuthenticationMethodsRegistrationCampaign();
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setSnoozeDurationInDays(1);
$registrationEnforcementAuthenticationMethodsRegistrationCampaign->setEnforceRegistrationAfterAllowedSnoozes(true);
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
$reportSuspiciousActivitySettings = new ReportSuspiciousActivitySettings();
$reportSuspiciousActivitySettings->setState(new AdvancedConfigState('enabled'));
$reportSuspiciousActivitySettingsIncludeTarget = new IncludeTarget();
$reportSuspiciousActivitySettingsIncludeTarget->setTargetType(new AuthenticationMethodTargetType('group'));
$reportSuspiciousActivitySettingsIncludeTarget->setId('all_users');
$reportSuspiciousActivitySettings->setIncludeTarget($reportSuspiciousActivitySettingsIncludeTarget);
$reportSuspiciousActivitySettings->setVoiceReportingCode(0);
$requestBody->setReportSuspiciousActivitySettings($reportSuspiciousActivitySettings);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->patch($requestBody)->wait();

```