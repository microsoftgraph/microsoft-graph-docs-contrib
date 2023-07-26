---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceCreate()
request_body.@odata_id = 'https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectors/{id}'




await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').connector_groups.by_connector_group_id('connectorGroup-id').members.ref.post(request_body = request_body)


```