---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->correlations()->byIdentityCorrelationId('identityCorrelation-id')->identities()->byCorrelatedIdentityId('correlatedIdentity-id')->get()->wait();

```