---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCaseSettings();
$requestBody->setOdataType('#microsoft.graph.security.ediscoveryCaseSettings');

$redundancyDetection = new RedundancyDetectionSettings();
$redundancyDetection->setOdataType('microsoft.graph.security.redundancyDetectionSettings');


$requestBody->setRedundancyDetection($redundancyDetection);
$topicModeling = new TopicModelingSettings();
$topicModeling->setOdataType('microsoft.graph.security.topicModelingSettings');


$requestBody->setTopicModeling($topicModeling);
$ocr = new OcrSettings();
$ocr->setOdataType('microsoft.graph.security.ocrSettings');


$requestBody->setOcr($ocr);


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->settings()->patch($requestBody);


```