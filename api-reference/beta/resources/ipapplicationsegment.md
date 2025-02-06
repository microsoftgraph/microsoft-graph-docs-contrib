---
title: "ipApplicationSegment resource type"
description: "Represents the segment configurations that are allowed for an on-premises nonweb application published through Microsoft Entra application proxy."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 12/19/2024
---

# ipApplicationSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the segment configurations that are allowed for an **on-premises nonweb application** published through Microsoft Entra application proxy and accessed via non-HTTP protocols.


Inherits from [applicationSegment](../resources/applicationsegment.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onpremisespublishingprofile-list-applicationsegments.md)|[ipApplicationSegment](../resources/ipapplicationsegment.md) collection|Get a list of the [ipApplicationSegment](../resources/ipapplicationsegment.md) objects and their properties.|
|[Create](../api/onpremisespublishingprofile-post-applicationsegments.md)|[ipApplicationSegment](../resources/ipapplicationsegment.md)|Create a new [ipApplicationSegment](../resources/ipapplicationsegment.md) object.|
|[Get](../api/ipapplicationsegment-get.md)|[ipApplicationSegment](../resources/ipapplicationsegment.md)|Read the properties and relationships of an [ipApplicationSegment](../resources/ipapplicationsegment.md) object.|
|[Update](../api/ipapplicationsegment-update.md)|[ipApplicationSegment](../resources/ipapplicationsegment.md)|Update the properties of an [ipApplicationSegment](../resources/ipapplicationsegment.md) object.|
|[Delete](../api/onpremisespublishingprofile-delete-applicationsegments.md)|None|Delete an [ipApplicationSegment](../resources/ipapplicationsegment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinationHost|String|Either the IP address, IP range, or FQDN of the **applicationSegment**, with or without wildcards.|
|destinationType|privateNetworkDestinationType|The possible values are: `ipAddress`, `ipRange`, `ipRangeCidr`, `fqdn`, `dnsSuffix`, `unknownFutureValue`.|
|id|String|Identifier for the application segment. Inherited from [applicationSegment](../resources/applicationsegment.md).|
|port (deprecated)|Int32|Port supported for the application segment. **DO NOT USE**.|
|ports|String collection|List of ports supported for the application segment.|
|protocol|privateNetworkProtocol|Indicates the protocol of the network traffic acquired for the application segment. The possible values are: `tcp`, `udp`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|application|[application](../resources/application.md)|The on-premises nonweb application published through Microsoft Entra application proxy. Expanded by default and supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ipApplicationSegment",
  "baseType": "microsoft.graph.applicationSegment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ipApplicationSegment",
  "id": "String (identifier)",
  "destinationHost": "String",
  "destinationType": "String",
  "port": "Integer",
  "ports": [
    "String"
  ],
  "protocol": "String"
}
```

