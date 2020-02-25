---
title: "synchronizationError resource type"
description: "Describes the error on the provisioning job leading to quarantine."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# synchronizationError resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the error(s) leading the job to go into quarantine. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|code|String|Quarantine error code.|
|message|String|Description of the quarantine code. |
|tenantActionable|String|Indicates if a customer can take action or needs to call support.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisionedIdentity",
  "baseType": null
}-->

```json
{
  "code": "String",
  "message": "String",
  "tenantActionable": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisionedIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
