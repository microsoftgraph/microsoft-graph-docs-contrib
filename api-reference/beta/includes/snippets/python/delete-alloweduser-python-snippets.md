---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.print.printer_shares.by_printer_share_id('printerShare-id').allowed_users.by_user_id('user-id').ref.delete()


```