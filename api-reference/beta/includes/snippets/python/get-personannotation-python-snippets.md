---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.profile.notes.by_person_annotation_id('personAnnotation-id').get()


```