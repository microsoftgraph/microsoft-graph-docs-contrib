---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->agreements()->byAgreementId('agreement-id')->file()->localizations()->get()->wait();

```