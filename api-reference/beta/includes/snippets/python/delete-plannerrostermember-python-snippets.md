---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.planner.rosters.by_planner_roster_id('plannerRoster-id').members.by_planner_roster_member_id('plannerRosterMember-id').delete()


```