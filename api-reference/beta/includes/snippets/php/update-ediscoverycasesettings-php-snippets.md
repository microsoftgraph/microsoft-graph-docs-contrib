---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EdiscoveryCaseSettings();
$requestBody->set@odatatype('#microsoft.graph.security.ediscoveryCaseSettings');

$redundancyDetection = new RedundancyDetectionSettings();
$redundancyDetection->set@odatatype('microsoft.graph.security.redundancyDetectionSettings');


$requestBody->setRedundancyDetection($redundancyDetection);
$topicModeling = new TopicModelingSettings();
$topicModeling->set@odatatype('microsoft.graph.security.topicModelingSettings');


$requestBody->setTopicModeling($topicModeling);
$ocr = new OcrSettings();
$ocr->set@odatatype('microsoft.graph.security.ocrSettings');


$requestBody->setOcr($ocr);


$result = $graphServiceClient->security()->cases()->ediscoveryCasesById('ediscoveryCase-id')->settings()->patch($requestBody);


```