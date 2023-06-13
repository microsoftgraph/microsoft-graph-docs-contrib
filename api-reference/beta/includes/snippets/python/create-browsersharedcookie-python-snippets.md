---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrowserSharedCookie()
request_body.@odata_type = '#microsoft.graph.browserSharedCookie'

request_body.host_or_domain = 'www.microsoft.com'

request_body.sourceenvironment(BrowserSharedCookieSourceEnvironment.InternetExplorer11('browsersharedcookiesourceenvironment.internetexplorer11'))

request_body.display_name = 'Microsoft Cookie'

request_body.host_only = True

request_body.comment = 'A cookie for microsoft.com'

request_body.path = '/'




result = await client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').shared_cookies.post(request_body = request_body)


```