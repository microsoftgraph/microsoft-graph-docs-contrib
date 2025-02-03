---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintJob printJob = new PrintJob();
printJob.setDisplayName("testjob");
PrintJobConfiguration configuration = new PrintJobConfiguration();
configuration.setFeedOrientation(PrinterFeedOrientation.LongEdgeFirst);
LinkedList<IntegerRange> pageRanges = new LinkedList<IntegerRange>();
IntegerRange integerRange = new IntegerRange();
integerRange.setStart(1L);
integerRange.setEnd(1L);
pageRanges.add(integerRange);
configuration.setPageRanges(pageRanges);
configuration.setQuality(PrintQuality.Medium);
configuration.setDpi(600);
configuration.setOrientation(PrintOrientation.Landscape);
configuration.setCopies(1);
configuration.setDuplexMode(PrintDuplexMode.OneSided);
configuration.setColorMode(PrintColorMode.BlackAndWhite);
configuration.setInputBin("by-pass-tray");
configuration.setOutputBin("output-tray");
configuration.setMediaSize("A4");
PrintMargin margin = new PrintMargin();
margin.setTop(0);
margin.setBottom(0);
margin.setLeft(0);
margin.setRight(0);
configuration.setMargin(margin);
configuration.setMediaType("stationery");
configuration.setFinishings(null);
configuration.setPagesPerSheet(1);
configuration.setMultipageLayout(PrintMultipageLayout.ClockwiseFromBottomLeft);
configuration.setCollate(false);
configuration.setScaling(PrintScaling.ShrinkToFit);
configuration.setFitPdfToPage(false);
printJob.setConfiguration(configuration);
PrintJob result = graphClient.print().shares().byPrinterShareId("{printerShare-id}").jobs().post(printJob);


```