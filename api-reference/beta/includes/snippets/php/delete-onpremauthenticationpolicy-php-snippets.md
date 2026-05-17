---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->onPremAuthenticationPolicies()->byOnPremAuthenticationPolicyId('onPremAuthenticationPolicy-id')->delete()->wait();

```