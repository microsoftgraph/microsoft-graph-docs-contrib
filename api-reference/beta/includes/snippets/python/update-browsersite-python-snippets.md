---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BrowserSite()
request_body.web_url = 'www.microsoft.com'

request_body.targetenvironment(BrowserSiteTargetEnvironment.MicrosoftEdge('browsersitetargetenvironment.microsoftedge'))

request_body.mergetype(BrowserSiteMergeType.Default('browsersitemergetype.default'))

request_body.compatibilitymode(BrowserSiteCompatibilityMode.Default('browsersitecompatibilitymode.default'))

request_body.allow_redirect = False

request_body.comment = 'Updating to Edge.'




result = await client.admin.edge.internet_explorer_mode.site_lists.by_site_list_id('browserSiteList-id').sites.by_site_id('browserSite-id').patch(request_body = request_body)


```