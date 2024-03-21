---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.case_settings import CaseSettings
from msgraph.generated.models.redundancy_detection_settings import RedundancyDetectionSettings
from msgraph.generated.models.topic_modeling_settings import TopicModelingSettings
from msgraph.generated.models.ocr_settings import OcrSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = CaseSettings(
	redundancy_detection = RedundancyDetectionSettings(
		is_enabled = False,
		similarity_threshold = 70,
		min_words = 12,
		max_words = 400000,
	),
	topic_modeling = TopicModelingSettings(
		is_enabled = False,
		ignore_numbers = False,
		topic_count = 50,
		dynamically_adjust_topic_count = False,
	),
	ocr = OcrSettings(
		is_enabled = True,
		max_image_size = 12000,
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').settings.patch(request_body)


```