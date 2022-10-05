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
$		acl1->setType('user');

$		acl1->setValue('e811976d-83df-4cbd-8b9b-5215b18aa874');

$		acl1->setAccessType('grant');

$		acl1->setIdentitySource('azureActiveDirectory');


$aclArray []= $acl1;
$acl2 = new ();
$		acl2->setType('group');

$		acl2->setValue('14m1b9c38qe647f6a');

$		acl2->setAccessType('deny');

$		acl2->setIdentitySource('external');


$aclArray []= $acl2;
$requestBody->setAcl($aclArray);


'properties' => $requestBody = new Properties();
$	requestBody->setTitle('Error in the payment gateway');

	$requestBody->setPriority(1);

$	requestBody->setAssignee('john@contoso.com');


$requestBody->setProperties($properties);

'content' => $requestBody = new Content();
$	requestBody->setValue('Error in payment gateway...');

$	requestBody->setType('text');


$requestBody->setContent($content);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->external()->connectionsById('externalConnection-id')->itemsById('externalItem-id')->put($requestBody);


```