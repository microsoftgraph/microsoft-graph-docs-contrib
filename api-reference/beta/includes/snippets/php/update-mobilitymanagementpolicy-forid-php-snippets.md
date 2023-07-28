---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MobilityManagementPolicy();
$requestBody->setOdataType('#microsoft.graph.mobilityManagementPolicy');

$requestBody->setComplianceUrl('https://portal.uem.contoso.com/?portalAction=Compliance');

$requestBody->setDiscoveryUrl('https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc');

$requestBody->setTermsOfUseUrl('https://portal.uem.contoso.com/TermsofUse.aspx');



$result = $graphServiceClient->policies()->mobileDeviceManagementPolicies()->byMobilityManagementPolicyId('mobilityManagementPolicy-id')->patch($requestBody);


```