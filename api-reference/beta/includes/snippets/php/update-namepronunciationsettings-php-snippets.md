---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\NamePronunciationSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new NamePronunciationSettings();
$requestBody->setOdataType('#microsoft.graph.namePronunciationSettings');
$requestBody->setIsEnabledInOrganization(true);

$result = $graphServiceClient->admin()->people()->namePronunciation()->patch($requestBody)->wait();

```