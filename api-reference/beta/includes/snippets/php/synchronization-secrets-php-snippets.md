---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SynchronizationSecretKeyStringValuePair();
$additionalData = [
		'value' => $value1 = new ();
$		value1->setKey('BaseAddress');

$		value1->setValue('user@domain.com');


$valueArray []= $value1;
$value2 = new ();
$		value2->setKey('SecretToken');

$		value2->setValue('password-value');


$valueArray []= $value2;
$value3 = new ();
$		value3->setKey('SyncNotificationSettings');

$		value3->setValue('{\"Enabled\":false,\"DeleteThresholdEnabled\":false}');


$valueArray []= $value3;
$value4 = new ();
$		value4->setKey('SyncAll');

$		value4->setValue('false');


$valueArray []= $value4;
$requestBody->setValue($valueArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->servicePrincipalsById('servicePrincipal-id')->synchronization()->secrets()->put($requestBody);


```