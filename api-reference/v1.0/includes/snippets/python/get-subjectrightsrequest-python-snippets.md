---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.privacy.subject_rights_requests.by_subject_rights_request_id('subjectRightsRequest-id').get()


```