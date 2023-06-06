---
title: "serviceLevelAgreementRoot resource type"
description: "A placeholder to allow for the desired URL path for Azure AD SLA attainment."
author: "sarbar"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# serviceLevelAgreementRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A placeholder to allow for the desired URL path for Azure AD SLA attainment.

Inherits from [entity](../resources/entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Uniquely identifies the serviceLevelAgreementRoot. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|azureADAuthentication|[azureADAuthentication](../resources/azureadauthentication.md)|Collects the Azure AD SLA attainment for each month for an Azure AD tenant.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceLevelAgreementRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceLevelAgreementRoot",
  "id": "String (identifier)"
}
```

