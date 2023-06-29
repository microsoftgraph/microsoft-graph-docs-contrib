---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FileAssessmentRequest();
$requestBody->set@odatatype('#microsoft.graph.fileAssessmentRequest');

$requestBody->setExpectedAssessment(new ThreatExpectedAssessment('block'));

$requestBody->setCategory(new ThreatCategory('malware'));

$requestBody->setFileName('test.txt');

$requestBody->setContentData('VGhpcyBpcyBhIHRlc3QgZmlsZQ==');



$result = $graphServiceClient->informationProtection()->threatAssessmentRequests()->post($requestBody);


```