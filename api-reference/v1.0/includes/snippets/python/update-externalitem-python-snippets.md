---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalItem()
acl_acl1 = Acl()
acl_acl1.type(AclType.Everyone('acltype.everyone'))

acl_acl1.value = '67a141d8-cf4e-4528-ba07-bed21bfacd2d'

acl_acl1.accesstype(AccessType.Grant('accesstype.grant'))


aclArray []= aclAcl1;
request_body.acl(aclArray)





result = await client.external.connections.by_connection_id('externalConnection-id').items.by_item_id('externalItem-id').put(request_body = request_body)


```