---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->applicationSignInDetailedSummary()->byApplicationSignInDetailedSummaryId('applicationSignInDetailedSummary-id')->get()->wait();

```