---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\AddLargeGalleryView\AddLargeGalleryViewPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddLargeGalleryViewPostRequestBody();
$requestBody->setClientContext('785f4929-92ca-497b-863f-c778c77c9758');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->addLargeGalleryView()->post($requestBody)->wait();

```