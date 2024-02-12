---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.print_job import PrintJob
from msgraph.generated.models.print_job_configuration import PrintJobConfiguration
from msgraph.generated.models.integer_range import IntegerRange
from msgraph.generated.models.print_margin import PrintMargin

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintJob(
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

result = await graph_client.print.shares.by_printer_share_id('printerShare-id').jobs.post(request_body)


```