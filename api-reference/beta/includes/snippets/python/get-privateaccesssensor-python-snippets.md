---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.on_premises_publishing_profiles.by_on_premises_publishing_profile_id('onPremisesPublishingProfile-id').sensors.by_private_access_sensor_id('privateAccessSensor-id').get()


```