---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->tokenLifetimePolicies()->byTokenLifetimePolicyId('tokenLifetimePolicy-id')->appliesTo()->get()->wait();

```