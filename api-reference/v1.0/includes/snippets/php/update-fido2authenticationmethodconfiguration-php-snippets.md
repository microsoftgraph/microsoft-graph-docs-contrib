---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Fido2AuthenticationMethodConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationMethodState;
use Microsoft\Graph\Generated\Models\Fido2KeyRestrictions;
use Microsoft\Graph\Generated\Models\Fido2RestrictionEnforcementType;
use Microsoft\Graph\Generated\Models\AuthenticationMethodTarget;
use Microsoft\Graph\Generated\Models\AuthenticationMethodTargetType;
use Microsoft\Graph\Generated\Models\ExcludeTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Fido2AuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.fido2AuthenticationMethodConfiguration');
$requestBody->setId('Fido2');
$requestBody->setState(new AuthenticationMethodState('disabled'));
$requestBody->setIsSelfServiceRegistrationAllowed(true);
$requestBody->setIsAttestationEnforced(true);
$keyRestrictions = new Fido2KeyRestrictions();
$keyRestrictions->setIsEnforced(false);
$keyRestrictions->setEnforcementType(new Fido2RestrictionEnforcementType('block'));
$keyRestrictions->setAaGuids([	]);
$requestBody->setKeyRestrictions($keyRestrictions);
$includeTargetsAuthenticationMethodTarget1 = new AuthenticationMethodTarget();
$includeTargetsAuthenticationMethodTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsAuthenticationMethodTarget1->setId('all_users');
$includeTargetsAuthenticationMethodTarget1->setIsRegistrationRequired(false);
$additionalData = [
	'allowedPasskeyProfiles' => [
'00000000-0000-0000-0000-000000000001', ],
];
$includeTargetsAuthenticationMethodTarget1->setAdditionalData($additionalData);
$includeTargetsArray []= $includeTargetsAuthenticationMethodTarget1;
$requestBody->setIncludeTargets($includeTargetsArray);

$requestBody->setExcludeTargets([]);
$additionalData = [
'passkeyProfiles' => [
		[
			'id' => '00000000-0000-0000-0000-000000000001',
			'name' => 'Default passkey profile',
			'passkeyTypes' => 'deviceBound,synced',
			'attestationEnforcement' => 'disabled',
			'keyRestrictions' => [
				'isEnforced' => false,
				'enforcementType' => 'allow',
				'aaGuids' => [],
			],
		],
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```