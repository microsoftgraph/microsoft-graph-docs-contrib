---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = RedirectPostRequestBody(
	destination_printer_id = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea",
	configuration = PrintJobConfiguration(
		feed_orientation = PrinterFeedOrientation.LongEdgeFirst,
		page_ranges = [
			IntegerRange(
				start = 1,
				end = 1,
			),
		],
		quality = PrintQuality.Medium,
		dpi = 600,
		orientation = PrintOrientation.Landscape,
		copies = 1,
		duplex_mode = PrintDuplexMode.OneSided,
		color_mode = PrintColorMode.BlackAndWhite,
		input_bin = "by-pass-tray",
		output_bin = "output-tray",
		media_size = "A4",
		margin = PrintMargin(
			top = 0,
			bottom = 0,
			left = 0,
			right = 0,
		),
		media_type = "stationery",
		finishings = None,
		pages_per_sheet = 1,
		multipage_layout = PrintMultipageLayout.ClockwiseFromBottomLeft,
		collate = False,
		scaling = PrintScaling.ShrinkToFit,
		fit_pdf_to_page = False,
	),
)

result = await graph_client.print.printers.by_printer_id('printer-id').jobs.by_print_job_id('printJob-id').redirect.post(request_body)


```