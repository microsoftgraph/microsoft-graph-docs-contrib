---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MobilityManagementPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobilityManagementPolicy();
$requestBody->setOdataType('#microsoft.graph.mobilityManagementPolicy');
$requestBody->setComplianceUrl('https://portal.uem.contoso.com/?portalAction=Compliance');
$requestBody->setDiscoveryUrl('https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc');
$requestBody->setTermsOfUseUrl('https://portal.uem.contoso.com/TermsofUse.aspx');

$result = $graphServiceClient->policies()->mobileDeviceManagementPolicies()->byMobileDeviceManagementPolicyId('mobileDeviceManagementPolicy-id')->patch($requestBody)->wait();

```