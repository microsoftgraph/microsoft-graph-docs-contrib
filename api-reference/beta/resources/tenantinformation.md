---
title: "tenantInformation resource type"
description: "Information about your tenant that can be displayed to users from external tenants, without the external tenants needing to form a relationship with your tenant."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# tenantInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about your tenant that can be displayed to users from external tenants, without the external tenants needing to form a relationship with your tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultDomainName|String|Primary domain of your tenant.|
|displayName|String|Display name of your tenant.|
|federationBrandName|String|Name shown to users that sign in to your tenant.|
|tenantId|String|ID of your tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantinformation",
  "defaultDomainName": "contoso.com",
  "displayName": "Contoso Production Tenant",
  "federationBrandName": "The Contoso Company",
  "tenantId": "tenantId-value"
}
```

