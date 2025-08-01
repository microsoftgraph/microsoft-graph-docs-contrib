---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.print_job import PrintJob
from msgraph_beta.generated.models.print_job_configuration import PrintJobConfiguration
from msgraph_beta.generated.models.printer_feed_orientation import PrinterFeedOrientation
from msgraph_beta.generated.models.integer_range import IntegerRange
from msgraph_beta.generated.models.print_quality import PrintQuality
from msgraph_beta.generated.models.print_orientation import PrintOrientation
from msgraph_beta.generated.models.print_duplex_mode import PrintDuplexMode
from msgraph_beta.generated.models.print_color_mode import PrintColorMode
from msgraph_beta.generated.models.print_margin import PrintMargin
from msgraph_beta.generated.models.print_multipage_layout import PrintMultipageLayout
from msgraph_beta.generated.models.print_scaling import PrintScaling
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrintJob(
	display_name = "testjob",
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