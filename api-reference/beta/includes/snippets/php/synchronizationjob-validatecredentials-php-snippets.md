---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ValidateCredentialsPostRequestBody();
$credentialsSynchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
$credentialsSynchronizationSecretKeyStringValuePair1->setKey(new SynchronizationSecret('username'));

$credentialsSynchronizationSecretKeyStringValuePair1->setValue('user@domain.com');


$credentialsArray []= $credentialsSynchronizationSecretKeyStringValuePair1;
$credentialsSynchronizationSecretKeyStringValuePair2 = new SynchronizationSecretKeyStringValuePair();
$credentialsSynchronizationSecretKeyStringValuePair2->setKey(new SynchronizationSecret('password'));

$credentialsSynchronizationSecretKeyStringValuePair2->setValue('password-value');


$credentialsArray []= $credentialsSynchronizationSecretKeyStringValuePair2;
$requestBody->setCredentials($credentialsArray);




$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->jobs()->byJobId('synchronizationJob-id')->validateCredentials()->post($requestBody);


```