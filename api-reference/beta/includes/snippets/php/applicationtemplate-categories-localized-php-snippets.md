---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\ApplicationTemplates\Item\ApplicationTemplateItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ApplicationTemplateItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Accept-Language' => 'cs',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->applicationTemplates()->byApplicationTemplateId('applicationTemplate-id')->get($requestConfiguration)->wait();

```