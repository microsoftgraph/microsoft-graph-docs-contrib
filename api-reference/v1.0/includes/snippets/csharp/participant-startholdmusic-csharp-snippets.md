---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customPrompt = new MediaPrompt
{
	MediaInfo = new MediaInfo
	{
		Uri = "https://bot.contoso.com/onHold.wav"
	}
};

var clientContext = "d45324c1-fcb5-430a-902c-f20af696537c";

await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"]
	.StartHoldMusic(customPrompt,clientContext)
	.Request()
	.PostAsync();

```