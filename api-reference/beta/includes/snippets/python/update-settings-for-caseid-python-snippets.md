---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CaseSettings()
redundancy_detection = RedundancyDetectionSettings()
redundancy_detection.is_enabled = False

redundancy_detection.SimilarityThreshold = 70

redundancy_detection.MinWords = 12

redundancy_detection.MaxWords = 400000


request_body.redundancy_detection = redundancy_detection
topic_modeling = TopicModelingSettings()
topic_modeling.is_enabled = False

topic_modeling.ignore_numbers = False

topic_modeling.TopicCount = 50

topic_modeling.dynamically_adjust_topic_count = False


request_body.topic_modeling = topic_modeling
ocr = OcrSettings()
ocr.is_enabled = True

ocr.MaxImageSize = 12000


request_body.ocr = ocr



result = await client.compliance.ediscovery.cases.by_case_id('case-id').settings.patch(request_body = request_body)


```