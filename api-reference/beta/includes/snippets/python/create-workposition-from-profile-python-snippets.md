---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkPosition()
detail = PositionDetail()
detailcompany = CompanyDetail()
detailcompany.display_name = 'Adventureworks Ltd.'

detailcompany.department = 'Consulting'

detailcompany.office_location = 'AW23/344'

detailcompanyaddress = PhysicalAddress()
detailcompanyaddress.type(PhysicalAddressType.Business('physicaladdresstype.business'))

detailcompanyaddress.street = '123 Patriachy Ponds'

detailcompanyaddress.city = 'Moscow'

detailcompanyaddress.country_or_region = 'Russian Federation'

detailcompanyaddress.postal_code = 'RU-34621'


detailcompany.address = detailcompanyaddress
detailcompany.web_url = 'https://www.adventureworks.com'


detail.company = detailcompany
detail.job_title = 'Senior Product Branding Manager II'

detail.role = 'consulting'


request_body.detail = detail
request_body.is_current = True




result = await client.me.profile.positions.post(request_body = request_body)


```