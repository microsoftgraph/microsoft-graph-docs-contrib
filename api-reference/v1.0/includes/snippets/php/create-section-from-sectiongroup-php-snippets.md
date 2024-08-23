---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnenoteSection;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnenoteSection();
$requestBody->setDisplayName('Section name');

$result = $graphServiceClient->me()->onenote()->sectionGroups()->bySectionGroupId('sectionGroup-id')->sections()->post($requestBody)->wait();

```