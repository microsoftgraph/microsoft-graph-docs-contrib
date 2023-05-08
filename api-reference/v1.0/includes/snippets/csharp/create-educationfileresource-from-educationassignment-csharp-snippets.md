---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationAssignmentResource
{
	DistributeForStudentWork = false,
	Resource = new EducationResource
	{
		DisplayName = "article.pdf",
		OdataType = "#microsoft.graph.educationFileResource",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"file" , new 
				{
					Odataid = "https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RPHKSP6THE4ORD2RQAR6MQLF26G",
				}
			},
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Resources.PostAsync(requestBody);


```