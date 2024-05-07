---
title: "azureADAuthentication resource type"
description: "Collects the Microsoft Entra SLA attainment for each month for a Microsoft Entra tenant."
author: "SarahBar"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Collects the Microsoft Entra SLA attainment for each month for a Microsoft Entra tenant.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get azureADAuthentication](../api/azureadauthentication-get.md)|[azureADAuthentication](../resources/azureadauthentication.md)|Read the properties and relationships of an [azureADAuthentication](../resources/azureadauthentication.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|attainments|[serviceLevelAgreementAttainment](../resources/servicelevelagreementattainment.md) collection|A list of monthly **serviceLevelAgreementAttainment** objects.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADAuthentication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADAuthentication",
  "attainments": [
    {
      "@odata.type": "microsoft.graph.serviceLevelAgreementAttainment"
    }
  ]
}
```
