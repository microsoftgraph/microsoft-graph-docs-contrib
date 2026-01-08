---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.ediscovery_case_settings import EdiscoveryCaseSettings
from msgraph.generated.models.security.redundancy_detection_settings import RedundancyDetectionSettings
from msgraph.generated.models.security.topic_modeling_settings import TopicModelingSettings
from msgraph.generated.models.security.ocr_settings import OcrSettings
from msgraph.generated.models.case_type import CaseType
from msgraph.generated.models.review_set_settings import ReviewSetSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryCaseSettings(
	odata_type = "https://graph.microsoft.com/v1.0/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/settings/$entity",
	redundancy_detection = RedundancyDetectionSettings(
		is_enabled = True,
		similarity_threshold = 65,
		min_words = 10,
		max_words = 500000,
	),
	topic_modeling = TopicModelingSettings(
		is_enabled = False,
		ignore_numbers = True,
		topic_count = 100,
		dynamically_adjust_topic_count = True,
	),
	ocr = OcrSettings(
		is_enabled = False,
		max_image_size = 24576,
		timeout = "PT1M",
	),
	case_type = CaseType.Standard,
	review_set_settings = ReviewSetSettings.DisableGrouping,
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').settings.patch(request_body)


```