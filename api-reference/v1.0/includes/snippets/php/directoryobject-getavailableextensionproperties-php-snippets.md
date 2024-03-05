---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetAvailableExtensionPropertiesPostRequestBody();

$result = $graphServiceClient->directoryObjects()->getAvailableExtensionProperties()->post($requestBody)->wait();

```