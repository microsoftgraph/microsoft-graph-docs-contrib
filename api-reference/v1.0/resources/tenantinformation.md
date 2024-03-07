---
title: "tenantInformation resource type"
description: "Information about your Microsoft Entra tenant that is publicly displayed to users in other Microsoft Entra tenants."
author: "adimitui"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# tenantInformation resource type

Namespace: microsoft.graph

Information about your Microsoft Entra tenant that is publicly displayed to users in other Microsoft Entra tenants.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| defaultDomainName | String | Primary domain name of a Microsoft Entra tenant. |
| displayName | String | Display name of a Microsoft Entra tenant. |
| federationBrandName | String | Name shown to users that sign in to a Microsoft Entra tenant. |
| tenantId | String | Unique identifier of a Microsoft Entra tenant. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantInformation",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tenantInformation",
  "defaultDomainName": "String",
  "displayName": "String",
  "federationBrandName": "String",
  "tenantId": "String"
}
```
