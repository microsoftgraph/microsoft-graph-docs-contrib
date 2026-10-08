---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

$params = @{
	body = @{
		messageBodyContentType = "html"
		content = "<codeblock class="plaintext"><code>Hello world</code></codeblock>"
	}
}

New-MgBetaChatMessage -ChatId $chatId -BodyParameter $params

```