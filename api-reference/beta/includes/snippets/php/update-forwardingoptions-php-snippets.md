---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Microsoft\Graph\Networkaccess\ForwardingOptions
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\SkipDnsLookupState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingOptions();
$requestBody->setSkipDnsLookupState(new Status('disabled'));

$result = $graphServiceClient->networkAccess()->settings()->forwardingOptions()->patch($requestBody)->wait();

```