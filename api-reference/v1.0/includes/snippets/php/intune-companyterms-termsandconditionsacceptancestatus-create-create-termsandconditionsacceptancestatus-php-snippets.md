---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TermsAndConditionsAcceptanceStatus();
$requestBody->setOdataType('#microsoft.graph.termsAndConditionsAcceptanceStatus');

$requestBody->setUserDisplayName('User Display Name value');

$requestBody->setAcceptedVersion(15);

$requestBody->setAcceptedDateTime(new \DateTime('2016-12-31T23:57:43.6165506-08:00'));

$requestBody->setUserPrincipalName('User Principal Name value');



$result = $graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionsId('termsAndConditions-id')->acceptanceStatuses()->post($requestBody);


```