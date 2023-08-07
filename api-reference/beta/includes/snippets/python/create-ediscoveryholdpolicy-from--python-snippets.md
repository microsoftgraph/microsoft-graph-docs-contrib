---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EdiscoveryHoldPolicy()
request_body.display_name = 'My legalHold with sources'

request_body.description = 'Created from Graph API'

additional_data = [
'user_sources@odata_bind' => user_sources@odatabind1 = ()
		user_sources@odatabind1.@odata_type = 'microsoft.graph.security.userSource'

		user_sources@odatabind1.email = 'SalesTeam@M365x809305.OnMicrosoft.com'


userSources@odata.bindArray []= userSources@odatabind1;
request_body.usersources@odatabind(userSources@odata.bindArray)


'site_sources@odata_bind' => site_sources@odatabind1 = ()
	site_sources@odatabind1.@odata_type = 'microsoft.graph.security.siteSource'

site_sources@odatabind1site = Site()
	site_sources@odatabind1site.web_url = 'https://m365x809305.sharepoint.com/sites/Design-topsecret'


site_sources@odatabind1.site = site_sources@odatabind1site

siteSources@odata.bindArray []= siteSources@odatabind1;
request_body.sitesources@odatabind(siteSources@odata.bindArray)


];
request_body.additional_data(additional_data)





result = await client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.post(request_body = request_body)


```