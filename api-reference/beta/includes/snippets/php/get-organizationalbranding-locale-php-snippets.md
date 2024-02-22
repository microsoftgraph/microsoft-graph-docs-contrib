---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new BrandingRequestBuilderGetRequestConfiguration();
$headers = [
		'Accept-Language' => 'fr-FR',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->get($requestConfiguration)->wait();

```