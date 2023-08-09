---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OnPremisesAgentGroup()
request_body.display_name = 'Group New Name'




result = await client.on_premise_publishing_profiles.by_on_premise_publishing_profile_id('onPremisesPublishingProfile-id').agent_groups.by_agent_group_id('onPremisesAgentGroup-id').patch(request_body = request_body)


```