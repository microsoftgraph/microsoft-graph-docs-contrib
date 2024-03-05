---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').conditions.applications.include_applications.by_authentication_condition_application_app_id('authenticationConditionApplication-appId').delete()


```