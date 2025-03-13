---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Printer printer = new Printer();
printer.setName("PrinterName");
PrinterLocation location = new PrinterLocation();
location.setLatitude(1.1d);
location.setLongitude(2.2d);
location.setAltitudeInMeters(3);
printer.setLocation(location);
Printer result = graphClient.print().printers().byPrinterId("{printer-id}").patch(printer);


```