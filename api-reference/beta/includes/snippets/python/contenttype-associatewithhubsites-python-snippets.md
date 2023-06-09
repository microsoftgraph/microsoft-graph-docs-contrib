---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AssociateWithHubSitesPostRequestBody()
request_body.HubSiteUrls(['https://graph.microsoft.com/beta/sites/id', ])

request_body.propagate_to_existing_lists = False




await client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').associate_with_hub_sites.post(request_body = request_body)


```