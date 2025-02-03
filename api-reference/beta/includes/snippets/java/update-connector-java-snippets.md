---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PrintConnector printConnector = new PrintConnector();
printConnector.setDisplayName("ConnectorName");
printConnector.setFullyQualifiedDomainName("CONNECTOR-MACHINE");
printConnector.setOperatingSystem("Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555");
printConnector.setAppVersion("0.19.7338.23496");
PrinterLocation location = new PrinterLocation();
location.setLatitude(1.1d);
location.setLongitude(2.2d);
location.setAltitudeInMeters(3);
printConnector.setLocation(location);
PrintConnector result = graphClient.print().connectors().byPrintConnectorId("{printConnector-id}").patch(printConnector);


```