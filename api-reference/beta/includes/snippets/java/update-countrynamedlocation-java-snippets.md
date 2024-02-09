---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CountryNamedLocation namedLocation = new CountryNamedLocation();
namedLocation.setOdataType("#microsoft.graph.countryNamedLocation");
namedLocation.setDisplayName("Updated named location without unknown countries and regions");
LinkedList<String> countriesAndRegions = new LinkedList<String>();
countriesAndRegions.add("CA");
countriesAndRegions.add("IN");
namedLocation.setCountriesAndRegions(countriesAndRegions);
namedLocation.setIncludeUnknownCountriesAndRegions(false);
NamedLocation result = graphClient.identity().conditionalAccess().namedLocations().byNamedLocationId("{namedLocation-id}").patch(namedLocation);


```