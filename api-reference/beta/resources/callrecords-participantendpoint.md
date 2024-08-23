---
title: "participantEndpoint resource type"
description: "Represents a participant endpoint (a user or user-like entity) in a call."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
---

# participantEndpoint resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a participant endpoint (a user or user-like entity) in a call. 

Inherits from [endpoint](callrecords-endpoint.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|associatedIdentity|[identity](identity.md)|Identity associated with the endpoint.|
|cpuCoresCount|Int32|CPU number of cores used by the media endpoint.|
|cpuName|String|CPU name used by the media endpoint.|
|cpuProcessorSpeedInMhz|Int32|CPU processor speed used by the media endpoint.|
|feedback|[microsoft.graph.callRecords.userFeedback](callrecords-userfeedback.md)|The feedback provided by the user of this endpoint about the quality of the session.|
|name|String|Name of the device used by the media endpoint.|
|userAgent|[microsoft.graph.callRecords.userAgent](callrecords-useragent.md)|User-agent reported by this endpoint.|
|identity (deprecated)|[identitySet](identityset.md)|Identity associated with the endpoint. The **identity** property is deprecated and will stop returning data on June 30, 2026. Going forward, use the **associatedIdentity** property.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.participantEndpoint",
  "baseType": "microsoft.graph.callRecords.endpoint"
}-->

```json
{
  "associatedIdentity": {"@odata.type": "microsoft.graph.identity"},
  "cpuCoresCount": "Int32",
  "cpuName": "String",
  "cpuProcessorSpeedInMhz": "Int32",
  "feedback": {"@odata.type": "microsoft.graph.callRecords.userFeedback"},
  "identity": {"@odata.type": "microsoft.graph.identitySet"},
  "name": "String",
  "userAgent": {"@odata.type": "microsoft.graph.callRecords.userAgent"}
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

