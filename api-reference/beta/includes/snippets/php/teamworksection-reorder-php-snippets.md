---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Reorder\ReorderRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Reorder\ReorderPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReorderPostRequestBody();
$requestBody->setSectionsOrder(['ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews', 'a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'b2c3d4e5-f6a7-8901-bcde-f12345678901', 	]);
$requestConfiguration = new ReorderRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->reorder()->post($requestBody, $requestConfiguration)->wait();

```