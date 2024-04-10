---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UrlThreatSubmission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UrlThreatSubmission();
$requestBody->setOdataType('#microsoft.graph.urlThreatSubmission');
$requestBody->setCategory(new SubmissionCategory('phishing'));
$requestBody->setWebUrl('http://phishing.contoso.com');

$result = $graphServiceClient->security()->threatSubmission()->urlThreats()->post($requestBody)->wait();

```