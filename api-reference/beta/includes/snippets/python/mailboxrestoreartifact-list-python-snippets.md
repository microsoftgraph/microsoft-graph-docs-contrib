---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.backup_restore.exchange_restore_sessions.by_exchange_restore_session_id('exchangeRestoreSession-id').mailbox_restore_artifacts.get()


```