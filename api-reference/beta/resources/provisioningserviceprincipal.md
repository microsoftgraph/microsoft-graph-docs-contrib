---
title: "provisioningServicePrincipal resource type"
description: "Represents the service principal used for provisioning."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 03/21/2024
---

# provisioningServicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service principal used for provisioning. Inherits from [identity](../resources/identity.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|Uniquely identifies the **servicePrincipal** used for provisioning. Inherited from [identity](../resources/identity.md).|
|name|String| Customer-defined name for the **servicePrincipal**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningServicePrincipal",
  "baseType": null
}-->

```json
{
  "id": "String",
  "name": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningServicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


