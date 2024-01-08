---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Print.Printers.Item.Jobs.Item.Redirect;
using Microsoft.Graph.Models;

var requestBody = new RedirectPostRequestBody
{
	DestinationPrinterId = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea",
	Configuration = new PrintJobConfiguration
	{
		FeedOrientation = PrinterFeedOrientation.LongEdgeFirst,
		PageRanges = new List<IntegerRange>
		{
			new IntegerRange
			{
				Start = 1L,
				End = 1L,
			},
		},
		Quality = PrintQuality.Medium,
		Dpi = 600,
		Orientation = PrintOrientation.Landscape,
		Copies = 1,
		DuplexMode = PrintDuplexMode.OneSided,
		ColorMode = PrintColorMode.BlackAndWhite,
		InputBin = "by-pass-tray",
		OutputBin = "output-tray",
		MediaSize = "A4",
		Margin = new PrintMargin
		{
			Top = 0,
			Bottom = 0,
			Left = 0,
			Right = 0,
		},
		MediaType = "stationery",
		Finishings = null,
		PagesPerSheet = 1,
		MultipageLayout = PrintMultipageLayout.ClockwiseFromBottomLeft,
		Collate = false,
		Scaling = PrintScaling.ShrinkToFit,
		FitPdfToPage = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Print.Printers["{printer-id}"].Jobs["{printJob-id}"].Redirect.PostAsync(requestBody);


```