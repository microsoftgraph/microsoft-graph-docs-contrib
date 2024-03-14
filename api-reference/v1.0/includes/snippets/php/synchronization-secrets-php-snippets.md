---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SecretsPutRequestBody();
$valueSynchronizationSecretKeyStringValuePair1 = new SynchronizationSecretKeyStringValuePair();
$valueSynchronizationSecretKeyStringValuePair1->setKey(new SynchronizationSecret('baseAddress'));
$valueSynchronizationSecretKeyStringValuePair1->setValue('user@domain.com');
$valueArray []= $valueSynchronizationSecretKeyStringValuePair1;
$valueSynchronizationSecretKeyStringValuePair2 = new SynchronizationSecretKeyStringValuePair();
$valueSynchronizationSecretKeyStringValuePair2->setKey(new SynchronizationSecret('secretToken'));
$valueSynchronizationSecretKeyStringValuePair2->setValue('password-value');
$valueArray []= $valueSynchronizationSecretKeyStringValuePair2;
$valueSynchronizationSecretKeyStringValuePair3 = new SynchronizationSecretKeyStringValuePair();
$valueSynchronizationSecretKeyStringValuePair3->setKey(new SynchronizationSecret('syncNotificationSettings'));
$valueSynchronizationSecretKeyStringValuePair3->setValue('{\"Enabled\":false,\"DeleteThresholdEnabled\":false}');
$valueArray []= $valueSynchronizationSecretKeyStringValuePair3;
$valueSynchronizationSecretKeyStringValuePair4 = new SynchronizationSecretKeyStringValuePair();
$valueSynchronizationSecretKeyStringValuePair4->setKey(new SynchronizationSecret('syncAll'));
$valueSynchronizationSecretKeyStringValuePair4->setValue('false');
$valueArray []= $valueSynchronizationSecretKeyStringValuePair4;
$requestBody->setValue($valueArray);


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->synchronization()->secrets()->put($requestBody)->wait();

```