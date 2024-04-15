---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetApplicablePolicyRequirementsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetApplicablePolicyRequirementsPostRequestBody();
$additionalData = [
	'subject' => [
		'objectId' => '5acd375c-8acb-45de-a958-fa0dd89259ad',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->getApplicablePolicyRequirements()->post($requestBody)->wait();

```