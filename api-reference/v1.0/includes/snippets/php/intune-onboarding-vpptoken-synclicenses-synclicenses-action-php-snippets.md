---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->vppTokens()->byVppTokenId('vppToken-id')->syncLicenses()->post()->wait();

```