---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Sites\Item\ContentModels\Item\AddToDrive\AddToDrivePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddToDrivePostRequestBody();
$requestBody->setDriveId('b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd');

$result = $graphServiceClient->sites()->bySiteId('site-id')->contentModels()->byContentModelId('contentModel-id')->addToDrive()->post($requestBody)->wait();

```