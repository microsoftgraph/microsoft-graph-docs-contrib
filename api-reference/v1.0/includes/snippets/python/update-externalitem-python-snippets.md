---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalItem(
	acl = [
		Acl(
			type = AclType.Everyone,
			value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
			access_type = AccessType.Grant,
		),
	],
)

result = await graph_client.external.connections.by_external_connection_id('externalConnection-id').items.by_external_item_id('externalItem-id').put(request_body)


```