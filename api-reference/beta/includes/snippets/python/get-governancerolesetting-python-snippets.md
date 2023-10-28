---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_settings.by_governance_role_setting_id('governanceRoleSetting-id').get()


```