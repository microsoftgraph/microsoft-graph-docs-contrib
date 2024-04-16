---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalItem;
use Microsoft\Graph\Generated\Models\Acl;
use Microsoft\Graph\Generated\Models\Properties;
use Microsoft\Graph\Generated\Models\ExternalItemContent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalItem();
$aclAcl1 = new Acl();
$aclAcl1->setType(new AclType('user'));
$aclAcl1->setValue('e811976d-83df-4cbd-8b9b-5215b18aa874');
$aclAcl1->setAccessType(new AccessType('grant'));
$aclArray []= $aclAcl1;
$aclAcl2 = new Acl();
$aclAcl2->setType(new AclType('externalGroup'));
$aclAcl2->setValue('14m1b9c38qe647f6a');
$aclAcl2->setAccessType(new AccessType('deny'));
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

$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->items()->byExternalItemId('externalItem-id')->put($requestBody)->wait();

```