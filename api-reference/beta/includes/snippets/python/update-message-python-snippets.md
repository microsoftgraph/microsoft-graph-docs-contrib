---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.inference_classification_type import InferenceClassificationType

graph_client = GraphServiceClient(credentials, scopes)

request_body = Message(
	subject = "subject-value",
	body = ItemBody(
		content_type = BodyType.Text,
		content = "content-value",
	),
	inference_classification = InferenceClassificationType.Other,
)

result = await graph_client.me.messages.by_message_id('message-id').patch(request_body)


```