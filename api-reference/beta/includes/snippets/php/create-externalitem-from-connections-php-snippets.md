---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\ExternalItem;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\Acl;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\AclType;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\AccessType;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\IdentitySourceType;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\Properties;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\ExternalItemContent;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\ExternalItemContentType;
use Microsoft\Graph\Beta\Generated\Models\ExternalConnectors\ExternalItemInformationProtectionLabel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalItem();
$aclAcl1 = new Acl();
$aclAcl1->setType(new AclType('user'));
$aclAcl1->setValue('e811976d-83df-4cbd-8b9b-5215b18aa874');
$aclAcl1->setAccessType(new AccessType('grant'));
$aclAcl1->setIdentitySource(new IdentitySourceType('azureActiveDirectory'));
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
'title' => 'Fix issues with Payment gateway',
'priority' => 1,
'assignee' => 'john@contoso.com',
];
$properties->setAdditionalData($additionalData);
$requestBody->setProperties($properties);
$content = new ExternalItemContent();
$content->setValue('Payment gateway module has the following tasks to be completed...');
$content->setType(new ExternalItemContentType('text'));
$requestBody->setContent($content);
$informationProtectionLabel = new ExternalItemInformationProtectionLabel();
$informationProtectionLabel->setSensitivityLabelId('b6a62c3c-d471-4a3e-9f5f-93c1f928b02d');
$requestBody->setInformationProtectionLabel($informationProtectionLabel);

$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->items()->byExternalItemId('externalItem-id')->put($requestBody)->wait();

```