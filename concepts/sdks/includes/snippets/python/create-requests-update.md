<!-- markdownlint-disable MD041 -->

```python
# PATCH https://graph.microsoft.com/v1.0/teams/{team-id}
team = Team()

fun_settings = TeamFunSettings()
fun_settings.allow_giphy = True
fun_settings.giphy_content_rating = GiphyRatingType.Strict

team.fun_settings = fun_settings

asyncio.run(client.teams_by_id('teamId').patch(team))
```
