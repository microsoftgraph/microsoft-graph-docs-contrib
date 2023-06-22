---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GetApplicablePolicyRequirementsPostRequestBody();
$additionalData = [
		'subject' => $requestBody = new Subject();
$		requestBody->setObjectId('5acd375c-8acb-45de-a958-fa0dd89259ad');


$requestBody->setSubject($subject);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->getApplicablePolicyRequirements()->post($requestBody);


```