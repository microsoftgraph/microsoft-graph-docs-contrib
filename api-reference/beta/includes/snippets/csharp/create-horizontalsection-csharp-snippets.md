---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new HorizontalSection
{
	Emphasis = SectionEmphasisType.Soft,
	Layout = HorizontalSectionLayoutType.OneColumn,
	Id = "3",
	Columns = new List<HorizontalSectionColumn>
	{
		new HorizontalSectionColumn
		{
			Id = "1",
			Width = 12,
			Webparts = new List<WebPart>
			{
				new WebPart
				{
					Id = "20a69b85-529c-41f3-850e-c93458aa74eb",
					AdditionalData = new Dictionary<string, object>
					{
						{
							"innerHtml" , "<p>sample text in text web part</p>"
						},
					},
				},
			},
		},
	},
};
var result = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.HorizontalSections.PostAsync(requestBody);


```