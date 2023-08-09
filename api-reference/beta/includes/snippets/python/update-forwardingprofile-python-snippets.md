---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ForwardingProfile()
associations_association1 = AssociatedBranch()
associations_association1.@odata_type = '#microsoft.graph.networkaccess.associatedBranch'

associations_association1.branch_id = '88e5a488-92c3-45d6-ba56-e5cfa63677e8'


associationsArray []= associationsAssociation1;
request_body.associations(associationsArray)





result = await client.network_access.forwarding_profiles.by_forwarding_profile_id('forwardingProfile-id').patch(request_body = request_body)


```