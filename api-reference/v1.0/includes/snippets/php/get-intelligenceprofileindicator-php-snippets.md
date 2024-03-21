---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatIntelligence()->intelligenceProfileIndicators()->byIntelligenceProfileIndicatorId('intelligenceProfileIndicator-id')->get()->wait();

```