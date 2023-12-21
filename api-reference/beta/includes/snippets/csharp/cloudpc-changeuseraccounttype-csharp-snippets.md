---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CloudPCs.Item.ChangeUserAccountType;
using Microsoft.Graph.Beta.Models;

var requestBody = new ChangeUserAccountTypePostRequestBody
{
	UserAccountType = CloudPcUserAccountType.Administrator,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"].ChangeUserAccountType.PostAsync(requestBody);


```