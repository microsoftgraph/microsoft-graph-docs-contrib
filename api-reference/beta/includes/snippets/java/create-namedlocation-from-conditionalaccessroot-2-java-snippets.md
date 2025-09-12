---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CountryNamedLocation namedLocation = new CountryNamedLocation();
namedLocation.setOdataType("#microsoft.graph.countryNamedLocation");
namedLocation.setDisplayName("Named location with unknown countries and regions");
LinkedList<String> countriesAndRegions = new LinkedList<String>();
countriesAndRegions.add("US");
countriesAndRegions.add("GB");
namedLocation.setCountriesAndRegions(countriesAndRegions);
namedLocation.setIncludeUnknownCountriesAndRegions(true);
NamedLocation result = graphClient.identity().conditionalAccess().namedLocations().post(namedLocation);


```