---
title: "provisioningSystemDetails resource type"
description: "provisioningSystemDetails resource"
localization_priority: Normal
author: "arvinh@microsoft.com"
ms.prod: "ms.prod"
doc_type: "resourcePageType"
---

# provisioningSystemDetails resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The provisioningSystemDetails represents the system that a user was provisioned to or from. For example, when provisioning a user from Azure Active Directory to ServiceNow, the source system would be 'Azure Active Directory' while the target system is 'ServiceNow'.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|details|[detailsInfo](detailsinfo.md)|Details of the system.|
|displayName|String|Name of the system that a user was provisioned to or from (e.g. Azure Active Directory, ServiceNow,etc.)|
|id|String|Identifier of the system that a user was provisioned to or from.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningSystemDetails",
  "baseType": null
}-->

```json
{
  "details": {"@odata.type": "microsoft.graph.detailsInfo"},
  "displayName": "String",
  "id": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningSystemDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->