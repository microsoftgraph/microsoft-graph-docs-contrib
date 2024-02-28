---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_case_settings import EdiscoveryCaseSettings
from msgraph.generated.models.redundancy_detection_settings import RedundancyDetectionSettings
from msgraph.generated.models.topic_modeling_settings import TopicModelingSettings
from msgraph.generated.models.ocr_settings import OcrSettings

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