---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\GetAvailableExtensionPropertiesPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetAvailableExtensionPropertiesPostRequestBody();

$result = $graphServiceClient->directoryObjects()->getAvailableExtensionProperties()->post($requestBody)->wait();

```