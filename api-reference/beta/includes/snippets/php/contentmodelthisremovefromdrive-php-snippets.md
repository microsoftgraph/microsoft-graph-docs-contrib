---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\ContentModels\Item\RemoveFromDrive\RemoveFromDrivePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoveFromDrivePostRequestBody();
$requestBody->setDriveId('b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd');

$graphServiceClient->sites()->bySiteId('site-id')->contentModels()->byContentModelId('contentModel-id')->removeFromDrive()->post($requestBody)->wait();

```