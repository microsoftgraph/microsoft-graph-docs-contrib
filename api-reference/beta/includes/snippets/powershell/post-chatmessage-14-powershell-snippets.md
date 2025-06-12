---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<codeblock><code>Hello world</code></codeblock>"
	}
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```