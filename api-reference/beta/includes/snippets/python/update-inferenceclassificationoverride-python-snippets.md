---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InferenceClassificationOverride()
request_body.classifyas(InferenceClassificationType.Focused('inferenceclassificationtype.focused'))




result = await client.me.inference_classification.overrides.by_override_id('inferenceClassificationOverride-id').patch(request_body = request_body)


```