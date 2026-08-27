---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->recovery()->jobs()->byRecoveryJobBaseId('recoveryJobBase-id')->microsoftGraphEntraRecoveryServicesCancel()->post()->wait();

```