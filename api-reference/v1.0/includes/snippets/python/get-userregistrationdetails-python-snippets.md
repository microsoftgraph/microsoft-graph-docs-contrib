---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.reports.authentication_methods.user_registration_details.by_user_registration_details_id('userRegistrationDetails-id').get()


```