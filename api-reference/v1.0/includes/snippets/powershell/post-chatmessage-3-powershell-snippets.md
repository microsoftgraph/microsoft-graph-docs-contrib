---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	subject = $null
	body = @{
		contentType = "html"
		content = "<attachment id="74d20c7f34aa4a7fb74e2b30004247c5"></attachment>"
	}
	attachments = @(
		@{
			id = "74d20c7f34aa4a7fb74e2b30004247c5"
			contentType = "application/vnd.microsoft.card.thumbnail"
			contentUrl = $null
			content = "{
  "title": "This is an example of posting a card",
  "subtitle": "<h3>This is the subtitle</h3>",
  "text": "Here is some body text. <br>\r\nAnd a <a href=\"http://microsoft.com/\">hyperlink</a>. <br>\r\nAnd below that is some buttons:",
  "buttons": [
    {
      "type": "messageBack",
      "title": "Login to FakeBot",
      "text": "login",
      "displayText": "login",
      "value": "login"
    }
  ]
}"
			name = $null
			thumbnailUrl = $null
		}
	)
}

New-MgTeamChannelMessage -TeamId $teamId -ChannelId $channelId -BodyParameter $params

```