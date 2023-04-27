---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationMethodConfiguration();
$requestBody->set@odatatype('#microsoft.graph.x509CertificateAuthenticationMethodConfiguration');

$requestBody->setId('X509Certificate');

$requestBody->setState(new AuthenticationMethodState('enabled'));

$additionalData = [
		'certificateUserBindings' => $certificateUserBindings1 = new ();
$		certificateUserBindings1->setX509CertificateField('PrincipalName');

$		certificateUserBindings1->setUserProperty('onPremisesUserPrincipalName');

		$certificateUserBindings1->setPriority(1);


$certificateUserBindingsArray []= $certificateUserBindings1;
$requestBody->setCertificateUserBindings($certificateUserBindingsArray);


	'authenticationModeConfiguration' => $requestBody = new AuthenticationModeConfiguration();
$	requestBody->setX509CertificateAuthenticationDefaultMode('x509CertificateMultiFactor');

$rules1 = new ();
$	rules1->setX509CertificateRuleType('issuerSubject');

$	rules1->setIdentifier('CN=ContosoCA,DC=Contoso,DC=org ');

$	rules1->setX509CertificateAuthenticationMode('x509CertificateMultiFactor');


$rulesArray []= $rules1;
$rules2 = new ();
$	rules2->setX509CertificateRuleType('policyOID');

$	rules2->setIdentifier('1.2.3.4');

$	rules2->setX509CertificateAuthenticationMode('x509CertificateMultiFactor');


$rulesArray []= $rules2;
$requestBody->setRules($rulesArray);



$requestBody->setAuthenticationModeConfiguration($authenticationModeConfiguration);

'includeTargets' => $includeTargets1 = new ();
$includeTargets1->setTargetType('group');

$includeTargets1->setId('all_users');

$includeTargets1->setIsRegistrationRequired(false);


$includeTargetsArray []= $includeTargets1;
$requestBody->setIncludeTargets($includeTargetsArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurationsById('authenticationMethodConfiguration-id')->patch($requestBody);


```