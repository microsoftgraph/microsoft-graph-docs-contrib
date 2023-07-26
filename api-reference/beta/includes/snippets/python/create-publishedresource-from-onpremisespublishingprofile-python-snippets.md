---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PublishedResource()
request_body.display_name = 'New provisioning'

request_body.resource_name = 'domain1.contoso.com'




result = await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').published_resources.post(request_body = request_body)


```