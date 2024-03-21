---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatIntelligence()->intelProfiles()->byIntelligenceProfileId('intelligenceProfile-id')->indicators()->get()->wait();

```