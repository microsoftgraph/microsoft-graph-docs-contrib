---
title: "certificateAuthorityPath resource type"
description: "Container for certificate authorities-related configurations for applications in the tenant."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# certificateAuthorityPath resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for certificate authorities-related configurations for applications in the tenant.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the certificate authority configuration. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|certificateBasedApplicationConfigurations|[certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) collection|Defines the trusted certificate authorities for certificates that can be added to apps and service principals in the tenant.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateAuthorityPath",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateAuthorityPath",
  "id": "String (identifier)"
}
```
