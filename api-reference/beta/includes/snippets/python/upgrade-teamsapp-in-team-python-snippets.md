---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.installedapps.item.upgrade.upgrade_post_request_body import UpgradePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpgradePostRequestBody(
)

await graph_client.teams.by_team_id('team-id').installed_apps.by_teams_app_installation_id('teamsAppInstallation-id').upgrade.post(request_body)


```