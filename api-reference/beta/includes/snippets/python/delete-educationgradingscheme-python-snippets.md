---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_schemes.by_education_grading_scheme_id('educationGradingScheme-id').delete()


```