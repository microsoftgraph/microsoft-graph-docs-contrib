<!-- markdownlint-disable MD041 -->

```go
// PATCH https://graph.microsoft.com/v1.0/teams/{team-id}

import (
    graph "github.com/microsoftgraph/msgraph-sdk-go/models/microsoft/graph"
    teams "github.com/microsoftgraph/msgraph-sdk-go/teams/item"
)

teamId := "71766077-aacc-470a-be5e-ba47db3b2e88"

funSettings := graph.NewTeamFunSettings()
allowGiphy := true
funSettings.SetAllowGiphy(&allowGiphy)
giphyRating := graph.STRICT_GIPHYRATINGTYPE
funSettings.SetGiphyContentRating(&giphyRating)

team := graph.NewTeam()
team.SetFunSettings(funSettings)

options := teams.TeamRequestBuilderPatchOptions{
    Body: team,
}

client.TeamsById(teamId).Patch(&options)
```
