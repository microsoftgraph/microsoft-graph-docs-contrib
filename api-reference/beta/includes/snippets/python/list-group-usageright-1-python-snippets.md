```python
from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)

result = await graph_client.groups.by_group_id('group-id').cloud_licensing.usage_rights.get()
```