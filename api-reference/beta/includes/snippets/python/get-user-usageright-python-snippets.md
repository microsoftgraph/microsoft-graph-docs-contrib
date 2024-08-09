```python
from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)

result = await graph_client.users.by_user_id('user-id').cloud_licensing.usage_rights.by_usage_right_id('usageRight-id').get()
```