---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ExternalItem();
$aclAcl1 = new Acl();
$aclAcl1->setType(new AclType('user'));

$aclAcl1->setValue('e811976d-83df-4cbd-8b9b-5215b18aa874');

$aclAcl1->setAccessType(new AccessType('grant'));

$aclAcl1->setIdentitySource(new IdentitySourceType('azureactivedirectory'));


$aclArray []= $aclAcl1;
$aclAcl2 = new Acl();
$aclAcl2->setType(new AclType('group'));

$aclAcl2->setValue('14m1b9c38qe647f6a');

$aclAcl2->setAccessType(new AccessType('deny'));

$aclAcl2->setIdentitySource(new IdentitySourceType('external'));


$aclArray []= $aclAcl2;
$requestBody->setAcl($aclArray);


$properties = new Properties();
$additionalData = [
	'title' => 'Error in the payment gateway', 
	'priority' => 1,
	'assignee' => 'john@contoso.com', 
];
$properties->setAdditionalData($additionalData);



$requestBody->setProperties($properties);
$content = new ExternalItemContent();
$content->setValue('Error in payment gateway...');

$content->setType(new ExternalItemContentType('text'));


$requestBody->setContent($content);


$result = $graphServiceClient->external()->connectionsById('externalConnection-id')->itemsById('externalItem-id')->put($requestBody);


```