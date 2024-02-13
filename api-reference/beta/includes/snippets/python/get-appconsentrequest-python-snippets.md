---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.app_consent.app_consent_requests.by_app_consent_request_id('appConsentRequest-id').get()


```