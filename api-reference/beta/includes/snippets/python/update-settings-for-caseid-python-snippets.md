---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.case_settings import CaseSettings
from msgraph_beta.generated.models.ediscovery.redundancy_detection_settings import RedundancyDetectionSettings
from msgraph_beta.generated.models.ediscovery.topic_modeling_settings import TopicModelingSettings
from msgraph_beta.generated.models.ediscovery.ocr_settings import OcrSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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