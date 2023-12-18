---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryCaseSettings(
	odata_type = "#microsoft.graph.security.ediscoveryCaseSettings",
	redundancy_detection = RedundancyDetectionSettings(
		odata_type = "microsoft.graph.security.redundancyDetectionSettings",
	),
	topic_modeling = TopicModelingSettings(
		odata_type = "microsoft.graph.security.topicModelingSettings",
	),
	ocr = OcrSettings(
		odata_type = "microsoft.graph.security.ocrSettings",
	),
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').settings.patch(request_body)


```