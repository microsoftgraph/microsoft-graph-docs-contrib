---
title: "activateService resource type"
description: "Payload that activates a service for an organization."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# activateService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **activateService** object  is used to activate a service for an organization.

## Properties

| Property         | Type         | Description                           |
| ----------------- | ------------ | ------------------------------------- |
| service| Edm.String | The name of the service to activate. |
| servicePlanId | Edm.Guid | The plan identifier of the service plan to activate. |
| skuId | Guid | The SKU identifier of the service plan. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.activateService"
}-->

```json
{
    "service": "serviceName",
    "skuId": "6fd2c87f-b296-42f0-b197-1e91e994b900",
    "servicePlanId": "a23b959c-7ce8-4e57-9140-b90eb88a9e97"
}
}

```

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "activateService",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->