---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.inference_classification_override import InferenceClassificationOverride
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = InferenceClassificationOverride(
	classify_as = InferenceClassificationType.Focused,
	sender_email_address = EmailAddress(
		name = "Samantha Booth",
		address = "samanthab@contoso.com",
	),
)

result = await graph_client.me.inference_classification.overrides.post(request_body)


```