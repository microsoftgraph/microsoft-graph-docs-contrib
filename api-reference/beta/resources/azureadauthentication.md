---
title: "azureADAuthentication resource type"
description: "Represents the Microsoft Entra Health service level agreement (SLA) attainment for each month for a Microsoft Entra tenant."
author: "SarahBar"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra Health service level agreement (SLA) attainment for each month for a Microsoft Entra tenant. For more information, see [What is Microsoft Entra Health?](/entra/identity/monitoring-health/concept-microsoft-entra-health)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get SLA attainment](../api/azureadauthentication-get.md)|[azureADAuthentication](../resources/azureadauthentication.md)|Read the properties and relationships of an [azureADAuthentication](../resources/azureadauthentication.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|attainments|[serviceLevelAgreementAttainment](../resources/servicelevelagreementattainment.md) collection|SLA data for a Microsoft Entra tenant for a calendar month.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
