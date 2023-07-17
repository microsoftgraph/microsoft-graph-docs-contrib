---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrowserSharedCookie()
request_body.host_or_domain = 'www.microsoft.com'

request_body.sourceenvironment(BrowserSharedCookieSourceEnvironment.MicrosoftEdge('browsersharedcookiesourceenvironment.microsoftedge'))

request_body.display_name = 'Microsoft Cookie'

request_body.path = '/'

request_body.host_only = True

request_body.comment = 'Updating source environment.'




result = await client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').shared_cookies.by_shared_cookie_id('browserSharedCookie-id').patch(request_body = request_body)


```