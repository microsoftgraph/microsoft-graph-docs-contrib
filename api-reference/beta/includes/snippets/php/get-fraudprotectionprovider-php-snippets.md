---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->riskPrevention()->fraudProtectionProviders()->byFraudProtectionProviderId('fraudProtectionProvider-id')->get()->wait();

```