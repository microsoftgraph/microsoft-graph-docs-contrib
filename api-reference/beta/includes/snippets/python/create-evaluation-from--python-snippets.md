---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.security_copilot.evaluation import Evaluation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Evaluation(
)

result = await graph_client.security.security_copilot.workspaces.by_workspace_id('workspace-id').sessions.by_session_id('session-id').prompts.by_prompt_id('prompt-id').evaluations.post(request_body)


```