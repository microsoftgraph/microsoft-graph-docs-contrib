---
title: "participantEndpoint resource type"
description: "The participantEndpoint type"
ms.localizationpriority: medium
author: "mcm223"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# participantEndpoint resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an participant endpoint in a call. The endpoint represents
a user or user-like entity. Inherits from [endpoint](callrecords-endpoint.md) type.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|cpuCoresCount|Int32|CPU number of cores used by the media endpoint.|
|cpuName|String|CPU name used by the media endpoint.|
|cpuProcessorSpeedInMhz|Int32|CPU processor speed used by the media endpoint.|
|feedback|[microsoft.graph.callRecords.userFeedback](callrecords-userfeedback.md)|The feedback provided by the user of this endpoint about the quality of the session.|
|identity|[identitySet](identityset.md)|Identity associated with the endpoint.|
|name|String|Name of the device used by the media endpoint.|
|userAgent|[microsoft.graph.callRecords.userAgent](callrecords-useragent.md)|User-agent reported by this endpoint.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.participantEndpoint",
  "baseType": "microsoft.graph.callRecords.endpoint"
}-->

```json
{
    "userAgent": {"@odata.type": "microsoft.graph.callRecords.userAgent"},
    "feedback": {"@odata.type": "microsoft.graph.callRecords.userFeedback"},
    "name": "String",
    "cpuName": "String",
    "cpuCoresCount": "Int32",
    "cpuProcessorSpeedInMhz": "Int32",
    "identity": {"@odata.type": "microsoft.graph.identitySet"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "participantEndpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

