---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.teamwork.team_templates.by_team_template_id('teamTemplate-id').definitions.by_team_template_definition_id('teamTemplateDefinition-id').team_definition.get()


```