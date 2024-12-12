---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\Pages\PagesRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\NewsLinkPage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NewsLinkPage();
$requestBody->setOdataType('#microsoft.graph.newsLinkPage');
$requestBody->setNewsWebUrl('https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car');
$requestBody->setTitle('Contoso Unveils First Self-Driving Car');
$requestConfiguration = new PagesRequestBuilderPostRequestConfiguration();
$headers = [
		'prefer' => 'include-unknown-enum-members',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->post($requestBody, $requestConfiguration)->wait();

```