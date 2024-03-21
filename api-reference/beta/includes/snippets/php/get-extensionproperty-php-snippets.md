---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->applications()->byApplicationId('application-id')->extensionProperties()->byExtensionPropertyId('extensionProperty-id')->get()->wait();

```