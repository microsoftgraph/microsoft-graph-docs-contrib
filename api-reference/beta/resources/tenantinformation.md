---
title: "tenantInformation resource type"
description: "Information about your Microsoft Entra tenant that is publicly displayed to users in other Microsoft Entra tenants."
author: "adimitui"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenantInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about your Microsoft Entra tenant that is publicly displayed to users in other Microsoft Entra tenants.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Find tenant by domain name](../api/tenantrelationship-findtenantinformationbydomainname.md) | tenantInformation | Given a domain name, search for a tenant and read its information. |
| [Find tenant by tenant ID](../api/tenantrelationship-findtenantinformationbytenantid.md) | tenantInformation | Given a tenant ID, search for a tenant and read its information. |

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

The following JSON representation shows the resource type.

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
