---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrintJob()
configuration = PrintJobConfiguration()
configuration.feedorientation(PrinterFeedOrientation.LongEdgeFirst('printerfeedorientation.longedgefirst'))

page_ranges_integer_range1 = IntegerRange()
page_ranges_integer_range1.Start = 1

page_ranges_integer_range1.End = 1


pageRangesArray []= pageRangesIntegerRange1;
configuration.pageranges(pageRangesArray)


configuration.quality(PrintQuality.Medium('printquality.medium'))

configuration.Dpi = 600

configuration.orientation(PrintOrientation.Landscape('printorientation.landscape'))

configuration.Copies = 1

configuration.duplexmode(PrintDuplexMode.OneSided('printduplexmode.onesided'))

configuration.colormode(PrintColorMode.BlackAndWhite('printcolormode.blackandwhite'))

configuration.input_bin = 'by-pass-tray'

configuration.output_bin = 'output-tray'

configuration.media_size = 'A4'

configurationmargin = PrintMargin()
configurationmargin.Top = 0

configurationmargin.Bottom = 0

configurationmargin.Left = 0

configurationmargin.Right = 0


configuration.margin = configurationmargin
configuration.media_type = 'stationery'

configuration.finishings=null

configuration.PagesPerSheet = 1

configuration.multipagelayout(PrintMultipageLayout.ClockwiseFromBottomLeft('printmultipagelayout.clockwisefrombottomleft'))

configuration.collate = False

configuration.scaling(PrintScaling.ShrinkToFit('printscaling.shrinktofit'))

configuration.fit_pdf_to_page = False


request_body.configuration = configuration



result = await client.print.shares.by_share_id('printerShare-id').jobs.post(request_body = request_body)


```