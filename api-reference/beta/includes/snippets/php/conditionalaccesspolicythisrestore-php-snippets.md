---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->conditionalAccess()->deletedItems()->policies()->byConditionalAccessPolicyId('conditionalAccessPolicy-id')->restore()->post()->wait();

```