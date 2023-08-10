---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TelecomExpenseManagementPartner()
request_body.@odata_type = '#microsoft.graph.telecomExpenseManagementPartner'

request_body.display_name = 'Display Name value'

request_body.url = 'Url value'

request_body.app_authorized = True

request_body.enabled = True

request_body.lastConnectionDateTime = DateTime('2016-12-31T23:58:36.6670033-08:00')




result = await client.device_management.telecom_expense_management_partners.by_telecom_expense_management_partner_id('telecomExpenseManagementPartner-id').patch(request_body = request_body)


```