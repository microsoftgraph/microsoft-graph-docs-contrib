---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Communications.Calls.Item.Transfer.TransferPostRequestBody
{
	TransferTarget = new InvitationParticipantInfo
	{
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "550fae72-d251-43ec-868c-373732c2704f",
				DisplayName = "Heidi Steen",
			},
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"endpointType" , "default"
			},
		},
	},
	Transferee = new ParticipantInfo
	{
		Identity = new IdentitySet
		{
			User = new Identity
			{
				Id = "751f6800-3180-414d-bd94-333364659951",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"tenantId" , "72f988bf-86f1-41af-91ab-2d7cd011db47"
					},
				},
			},
		},
		ParticipantId = "909c6581-5130-43e9-88f3-fcb3582cde37",
	},
};
await graphClient.Communications.Calls["{call-id}"].Transfer.PostAsync(requestBody);


```