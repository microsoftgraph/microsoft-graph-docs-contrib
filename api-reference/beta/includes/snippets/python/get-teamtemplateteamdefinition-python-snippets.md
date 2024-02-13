---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.teamwork.team_templates.by_team_template_id('teamTemplate-id').definitions.by_team_template_definition_id('teamTemplateDefinition-id').team_definition.get()


```