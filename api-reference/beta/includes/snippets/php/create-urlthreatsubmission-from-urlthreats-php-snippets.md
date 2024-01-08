---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UrlThreatSubmission();
$requestBody->setOdataType('#microsoft.graph.urlThreatSubmission');
$requestBody->setCategory(new SubmissionCategory('phishing'));
$requestBody->setWebUrl('http://phishing.contoso.com');

$result = $graphServiceClient->security()->threatSubmission()->urlThreats()->post($requestBody)->wait();

```