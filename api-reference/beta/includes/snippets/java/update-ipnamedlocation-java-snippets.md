---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IpNamedLocation namedLocation = new IpNamedLocation();
namedLocation.setOdataType("#microsoft.graph.ipNamedLocation");
namedLocation.setDisplayName("Untrusted named location with only IPv4 address");
namedLocation.setIsTrusted(false);
LinkedList<IpRange> ipRanges = new LinkedList<IpRange>();
IPv4CidrRange ipRange = new IPv4CidrRange();
ipRange.setOdataType("#microsoft.graph.iPv4CidrRange");
ipRange.setCidrAddress("6.5.4.3/18");
ipRanges.add(ipRange);
namedLocation.setIpRanges(ipRanges);
NamedLocation result = graphClient.identity().conditionalAccess().namedLocations().byNamedLocationId("{namedLocation-id}").patch(namedLocation);


```