---
title: "mfaDetail resource type"
description: "Indicates MFA details for a specific sign-in. It includes the authentication method used for signing in and auth details (for example, Phone, SMS, or voicemail) "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "egreenberg14"
ms.date: 05/09/2024
---

# mfaDetail resource type

Namespace: microsoft.graph

Indicates MFA details for a specific sign-in. It includes the authentication method used for signing in and auth details (for example: Phone, SMS, or voicemail)



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|authDetail|String|Indicates the MFA auth detail for the corresponding sign-in activity when the MFA Required is "Yes".|
|authMethod|String|Indicates the MFA Auth methods (SMS, Phone, Authenticator App are some of the values) for the corresponding sign-in activity when the MFA Required field is "Yes".|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mfaDetail"
}-->

```json
{
  "authDetail": "String",
  "authMethod": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mfaDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


