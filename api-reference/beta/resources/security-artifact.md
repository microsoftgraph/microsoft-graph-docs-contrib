---
title: "artifact resource type"
description: "An abstract representation of an entity found online by Microsoft's Security services"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# artifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

`artifact` is not an addressible EntityType. Instead, it is used as an abstract representation of an entity found online by Microsoft's Security services.

Current types of artifacts include:

* [host](../resources/security-host.md)
  * [hostname](../resources/security-hostname.md)
  * [ipAddresss](../resources/security-ipaddress.md)
* [hostComponent](../resources/security-hostcomponent.md)
* [hostCookie](../resources/security-hostcookie.md)
* [hostTracker](../resources/security-hosttracker.md)
* [passiveDnsRecord](../resources/security-passiveDnsRecord.md)
* [unclassifiedArtifact](../resources/security-unclassifiedartifact.md)

Instances of `artifact` identified in the following Microsoft Security API Groups should handle the possible implementations. Microsoft Security APIs that currently support `artifact` type:

* [Microsoft Threat Intelligence](../resources/security-threatintelligence-overview.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A system-generated id.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

