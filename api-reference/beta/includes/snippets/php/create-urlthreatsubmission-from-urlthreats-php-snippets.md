---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UrlThreatSubmission();
$requestBody->set@odatatype('#microsoft.graph.urlThreatSubmission');

$requestBody->setCategory(new SubmissionCategory('phishing'));

$requestBody->setWebUrl('http://phishing.contoso.com');



$result = $graphServiceClient->security()->threatSubmission()->urlThreats()->post($requestBody);


```