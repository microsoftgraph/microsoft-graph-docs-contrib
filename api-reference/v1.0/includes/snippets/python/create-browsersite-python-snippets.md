---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrowserSite()
request_body.@odata_type = '#microsoft.graph.browserSite'

request_body.web_url = 'www.microsoft.com'

request_body.targetenvironment(BrowserSiteTargetEnvironment.InternetExplorer11('browsersitetargetenvironment.internetexplorer11'))

request_body.comment = 'A site that opens in InternetExplorer11'

request_body.mergetype(BrowserSiteMergeType.Default('browsersitemergetype.default'))

request_body.compatibilitymode(BrowserSiteCompatibilityMode.Default('browsersitecompatibilitymode.default'))

request_body.allow_redirect = True




result = await client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').sites.post(request_body = request_body)


```