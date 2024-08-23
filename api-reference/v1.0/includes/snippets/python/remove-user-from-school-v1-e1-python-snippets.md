---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.education.schools.by_education_school_id('educationSchool-id').users.by_education_user_id('educationUser-id').ref.delete()


```