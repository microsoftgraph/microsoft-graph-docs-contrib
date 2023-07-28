---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ScopedRoleMembership()
request_body.role_id = 'roleId-value'

role_member_info = Identity()
role_member_info.id = 'id-value'


request_body.role_member_info = role_member_info



result = await client.directory.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.post(request_body = request_body)


```