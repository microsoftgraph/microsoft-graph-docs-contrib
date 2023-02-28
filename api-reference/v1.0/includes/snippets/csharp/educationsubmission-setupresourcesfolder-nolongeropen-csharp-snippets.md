---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Education.Classes.Item.Assignments.Item.Submissions.Item.MicrosoftGraphSetUpResourcesFolder.SetUpResourcesFolderPostRequestBody
{
};
var result = await graphClient.Education.Classes["educationClass-id"].Assignments["educationAssignment-id"].Submissions["educationSubmission-id"].MicrosoftGraphSetUpResourcesFolder.PostAsync(requestBody);


```