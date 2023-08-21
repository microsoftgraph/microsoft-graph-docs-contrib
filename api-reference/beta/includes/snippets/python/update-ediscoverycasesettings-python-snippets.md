---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryCaseSettings()
request_body.@odata_type = '#microsoft.graph.security.ediscoveryCaseSettings'

redundancy_detection = RedundancyDetectionSettings()
redundancy_detection.@odata_type = 'microsoft.graph.security.redundancyDetectionSettings'


request_body.redundancy_detection = redundancy_detection
topic_modeling = TopicModelingSettings()
topic_modeling.@odata_type = 'microsoft.graph.security.topicModelingSettings'


request_body.topic_modeling = topic_modeling
ocr = OcrSettings()
ocr.@odata_type = 'microsoft.graph.security.ocrSettings'


request_body.ocr = ocr



result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').settings.patch(request_body = request_body)


```