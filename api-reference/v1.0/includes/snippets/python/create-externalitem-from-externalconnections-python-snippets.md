---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalItem()
acl_acl1 = Acl()
acl_acl1.type(AclType.User('acltype.user'))

acl_acl1.value = 'e811976d-83df-4cbd-8b9b-5215b18aa874'

acl_acl1.accesstype(AccessType.Grant('accesstype.grant'))


aclArray []= aclAcl1;
acl_acl2 = Acl()
acl_acl2.type(AclType.ExternalGroup('acltype.externalgroup'))

acl_acl2.value = '14m1b9c38qe647f6a'

acl_acl2.accesstype(AccessType.Deny('accesstype.deny'))


aclArray []= aclAcl2;
request_body.acl(aclArray)


properties = Properties()
additional_data = [
'title' => 'Error in the payment gateway', 
'priority' => 1,
'assignee' => 'john@contoso.com', 
];
properties.additional_data(additional_data)



request_body.properties = properties
content = ExternalItemContent()
content.value = 'Error in payment gateway...'

content.type(ExternalItemContentType.Text('externalitemcontenttype.text'))


request_body.content = content



result = await client.external.connections.by_connection_id('externalConnection-id').items.by_item_id('externalItem-id').put(request_body = request_body)


```