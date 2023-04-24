---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Item();
$additionalData = [
		'acl' => $acl1 = new ();
$		acl1->setType('everyone');

$		acl1->setValue('67a141d8-cf4e-4528-ba07-bed21bfacd2d');

$		acl1->setAccessType('grant');


$aclArray []= $acl1;
$requestBody->setAcl($aclArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->external()->connectionsById('externalConnection-id')->itemsById('externalItem-id')->patch($requestBody);


```