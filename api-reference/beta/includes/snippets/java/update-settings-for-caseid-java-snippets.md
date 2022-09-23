---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CaseSettings caseSettings = new CaseSettings();
RedundancyDetectionSettings redundancyDetection = new RedundancyDetectionSettings();
redundancyDetection.isEnabled = false;
redundancyDetection.similarityThreshold = 70;
redundancyDetection.minWords = 12;
redundancyDetection.maxWords = 400000;
caseSettings.redundancyDetection = redundancyDetection;
TopicModelingSettings topicModeling = new TopicModelingSettings();
topicModeling.isEnabled = false;
topicModeling.ignoreNumbers = false;
topicModeling.topicCount = 50;
topicModeling.dynamicallyAdjustTopicCount = false;
caseSettings.topicModeling = topicModeling;
OcrSettings ocr = new OcrSettings();
ocr.isEnabled = true;
ocr.maxImageSize = 12000;
caseSettings.ocr = ocr;

graphClient.compliance().ediscovery().cases("{caseId}").settings()
	.buildRequest()
	.patch(caseSettings);

```