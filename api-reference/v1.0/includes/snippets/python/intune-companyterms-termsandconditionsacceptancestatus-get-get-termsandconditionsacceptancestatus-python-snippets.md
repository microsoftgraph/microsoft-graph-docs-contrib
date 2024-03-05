---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.terms_and_conditions.by_terms_and_conditions_id('termsAndConditions-id').acceptance_statuses.by_terms_and_conditions_acceptance_status_id('termsAndConditionsAcceptanceStatus-id').get()


```