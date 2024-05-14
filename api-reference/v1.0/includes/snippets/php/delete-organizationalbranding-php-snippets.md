---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\BrandingDeleteRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrandingDeleteRequestBody();
$additionalData = [
	'id' => '0',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->delete($requestBody)->wait();

```