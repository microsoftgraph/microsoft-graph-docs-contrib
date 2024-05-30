---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.SendDtmfTones;
using Microsoft.Graph.Beta.Models;

var requestBody = new SendDtmfTonesPostRequestBody
{
	Tones = new List<Tone?>
	{
		Tone.Tone1,
		Tone.Tone2,
		Tone.Tone3,
		Tone.Tone4,
		Tone.Tone5,
		Tone.Tone6,
		Tone.Tone7,
		Tone.Tone8,
		Tone.Tone9,
		Tone.Tone0,
		Tone.Star,
		Tone.Pound,
	},
	DelayBetweenTonesMs = 1000,
	ClientContext = "e0be71f1-a14f-4cec-b65a-e7aba5db7c53",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.Calls["{call-id}"].SendDtmfTones.PostAsync(requestBody);


```