---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddActivitiesPostRequestBody()
activities_external_activity1 = ExternalActivity()
activities_external_activity1.@odata_type = '#microsoft.graph.externalConnectors.externalActivity'

activities_external_activity1.type(ExternalActivityType.Created('externalactivitytype.created'))

activities_external_activity1.startDateTime = DateTime('2021-04-06T18:04:31.033Z')

activities_external_activity1performed_by = Identity()
activities_external_activity1performed_by.type(IdentityType.User('identitytype.user'))

activities_external_activity1performed_by.id = '1f0c997e-99f7-43f1-8cca-086f8d42be8d'


activities_external_activity1.performed_by = activities_external_activity1performed_by

activitiesArray []= activitiesExternalActivity1;
request_body.activities(activitiesArray)





result = await client.external.connections.by_connection_id('externalConnection-id').items.by_item_id('externalItem-id').microsoft_graph_external_connector_add_activities.post(request_body = request_body)


```