---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	body = @{
		contentType = "html"
		content = "<codeblock class="plaintext"><code>Hello world</code></codeblock>"
	}
}

New-MgChatMessage -ChatId $chatId -BodyParameter $params

```