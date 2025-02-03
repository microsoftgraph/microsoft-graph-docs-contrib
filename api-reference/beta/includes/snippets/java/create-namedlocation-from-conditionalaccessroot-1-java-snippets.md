---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IpNamedLocation namedLocation = new IpNamedLocation();
namedLocation.setOdataType("#microsoft.graph.ipNamedLocation");
namedLocation.setDisplayName("Untrusted IP named location");
namedLocation.setIsTrusted(false);
LinkedList<IpRange> ipRanges = new LinkedList<IpRange>();
IPv4CidrRange ipRange = new IPv4CidrRange();
ipRange.setOdataType("#microsoft.graph.iPv4CidrRange");
ipRange.setCidrAddress("12.34.221.11/22");
ipRanges.add(ipRange);
IPv6CidrRange ipRange1 = new IPv6CidrRange();
ipRange1.setOdataType("#microsoft.graph.iPv6CidrRange");
ipRange1.setCidrAddress("2001:0:9d38:90d6:0:0:0:0/63");
ipRanges.add(ipRange1);
namedLocation.setIpRanges(ipRanges);
NamedLocation result = graphClient.identity().conditionalAccess().namedLocations().post(namedLocation);


```