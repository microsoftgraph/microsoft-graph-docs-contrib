---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BrandingDeleteRequestBody();
$additionalData = [
	'id' => '0',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->delete($requestBody)->wait();

```