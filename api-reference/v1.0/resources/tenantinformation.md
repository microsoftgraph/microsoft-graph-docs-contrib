---
title: "tenantInformation resource type"
description: "Information about your Azure AD tenant that is publicly displayed to users in other Azure AD tenants."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# tenantInformation resource type

Namespace: microsoft.graph

Information about your Azure AD tenant that is publicly displayed to users in other Azure AD tenants.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| defaultDomainName | String | Primary domain name of an Azure AD tenant. |
| displayName | String | Display name of an Azure AD tenant. |
| federationBrandName | String | Name shown to users that sign in to an Azure AD tenant. |
| tenantId | String | Unique identifier of an Azure AD tenant. |

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
