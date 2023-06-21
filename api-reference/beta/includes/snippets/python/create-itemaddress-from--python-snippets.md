---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemAddress()
request_body.display_name = 'Home'

detail = PhysicalAddress()
detail.type(PhysicalAddressType.Home('physicaladdresstype.home'))

detail.postOfficeBox=null

detail.street = '221B Baker Street'

detail.city = 'London'

detail.state=null

detail.country_or_region = 'United Kingdom'

detail.postal_code = 'E14 3TD'


request_body.detail = detail



result = await client.me.profile.addresses.post(request_body = request_body)


```