---
title: "artifact resource type"
description: "Represents an abstract entity found online by Microsoft security services."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# artifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents an abstract entity found online by Microsoft security services.

Current types of artifacts include:

* [host](../resources/security-host.md)
  * [hostname](../resources/security-hostname.md)
  * [ipAddresss](../resources/security-ipaddress.md)
* [hostComponent](../resources/security-hostcomponent.md)
* [hostCookie](../resources/security-hostcookie.md)
* [hostTracker](../resources/security-hosttracker.md)
* [passiveDnsRecord](../resources/security-passivednsrecord.md)
* [unclassifiedArtifact](../resources/security-unclassifiedartifact.md)

Instances of **artifact** identified in the following Microsoft Security API groups should handle the possible implementations. Microsoft Security APIs that currently support the **artifact** type:

* [Threat intelligence](../resources/security-threatintelligence.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **artifact**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.artifact",
  "id": "String (identifier)"
}
```
