---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Search\Bookmark;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Bookmark();
$requestBody->setDescription('Book a fancy vacation in Tuscany or browse museums in Florence.');

$result = $graphServiceClient->search()->bookmarks()->byBookmarkId('bookmark-id')->patch($requestBody)->wait();

```