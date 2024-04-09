---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalItem;
use Microsoft\Graph\Generated\Models\Acl;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalItem();
$aclAcl1 = new Acl();
$aclAcl1->setType(new AclType('everyone'));
$aclAcl1->setValue('67a141d8-cf4e-4528-ba07-bed21bfacd2d');
$aclAcl1->setAccessType(new AccessType('grant'));
$aclArray []= $aclAcl1;
$requestBody->setAcl($aclArray);


$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->items()->byExternalItemId('externalItem-id')->put($requestBody)->wait();

```