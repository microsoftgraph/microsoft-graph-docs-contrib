---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.inference_classification_override import InferenceClassificationOverride
from msgraph_beta.generated.models.inference_classification_type import InferenceClassificationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InferenceClassificationOverride(
	classify_as = InferenceClassificationType.Focused,
)

result = await graph_client.me.inference_classification.overrides.by_inference_classification_override_id('inferenceClassificationOverride-id').patch(request_body)


```