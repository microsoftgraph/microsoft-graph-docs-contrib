---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
request_body.Tags(['HR', 'Payroll', 'HideApp', ])

info = InformationalUrl()
info.logo_url = 'https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png'

info.marketing_url = 'https://www.contoso.com/app/marketing'

info.privacy_statement_url = 'https://www.contoso.com/app/privacy'

info.support_url = 'https://www.contoso.com/app/support'

info.terms_of_service_url = 'https://www.contoso.com/app/termsofservice'


request_body.info = info
web = WebApplication()
web.home_page_url = 'https://www.contoso.com/'

web.logout_url = 'https://www.contoso.com/frontchannel_logout'

web.RedirectUris(['https://localhost', ])


request_body.web = web
request_body.service_management_reference = 'Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;'




result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```