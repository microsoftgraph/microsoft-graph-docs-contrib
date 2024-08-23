---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\EntitlementManagement\AccessPackages\Item\GetApplicablePolicyRequirements\GetApplicablePolicyRequirementsPostRequestBody;


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