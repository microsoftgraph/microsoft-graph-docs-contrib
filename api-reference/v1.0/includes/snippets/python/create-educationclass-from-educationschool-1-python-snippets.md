---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.education.classes.by_education_class_id('educationClass-id').members.by_education_user_id('educationUser-id').ref.delete()


```