---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_case_settings import EdiscoveryCaseSettings
from msgraph_beta.generated.models.security.redundancy_detection_settings import RedundancyDetectionSettings
from msgraph_beta.generated.models.security.topic_modeling_settings import TopicModelingSettings
from msgraph_beta.generated.models.security.ocr_settings import OcrSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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