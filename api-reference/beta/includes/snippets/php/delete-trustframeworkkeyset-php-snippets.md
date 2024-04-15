---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->delete()->wait();

```