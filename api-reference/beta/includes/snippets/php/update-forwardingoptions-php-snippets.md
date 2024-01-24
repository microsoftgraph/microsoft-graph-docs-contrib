---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingOptions();
$requestBody->setSkipDnsLookupState(new Status('disabled'));

$result = $graphServiceClient->networkAccess()->settings()->forwardingOptions()->patch($requestBody)->wait();

```