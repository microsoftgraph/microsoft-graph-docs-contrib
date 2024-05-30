---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Organization\Item\Branding\BrandingDeleteRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrandingDeleteRequestBody();
$additionalData = [
	'id' => '0',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->delete($requestBody)->wait();

```