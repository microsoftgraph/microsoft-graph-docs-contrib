---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AuthoredNote;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthoredNote();
$content = new ItemBody();
$content->setContent('Please take a look at the files tagged with follow up');
$content->setContentType(new BodyType('text'));
$requestBody->setContent($content);

$result = $graphServiceClient->privacy()->subjectRightsRequests()->bySubjectRightsRequestId('subjectRightsRequest-id')->notes()->post($requestBody)->wait();

```