---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MobilityManagementPolicy();
$requestBody->set@odatatype('#microsoft.graph.mobilityManagementPolicy');

$requestBody->setComplianceUrl('https://portal.mg.contoso.com/?portalAction=Compliance');

$requestBody->setDiscoveryUrl('https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc');

$requestBody->setTermsOfUseUrl('https://portal.mg.contoso.com/TermsofUse.aspx');



$result = $graphServiceClient->policies()->mobileAppManagementPoliciesById('mobilityManagementPolicy-id')->patch($requestBody);


```