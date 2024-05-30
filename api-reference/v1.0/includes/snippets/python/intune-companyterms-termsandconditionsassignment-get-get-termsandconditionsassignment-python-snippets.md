---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').assignments.by_terms_and_conditions_assignment_id('termsAndConditionsAssignment-id').get()


```