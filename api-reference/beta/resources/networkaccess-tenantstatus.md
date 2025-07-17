---
title: "tenantStatus resource type"
description: "Represents the status of the Global Secure Access services for the tenant."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 05/23/2024
---

# tenantStatus resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of the Global Secure Access services for the tenant.    

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/networkaccess-tenantstatus-get.md)|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object.|
|[Onboard](../api/networkaccess-networkaccessroot-onboard.md)|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Onboard the tenant to the Global Secure Access services.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|onboardingErrorMessage|String|Reflects a message to the user if there's an error.|
|onboardingStatus|microsoft.graph.networkaccess.onboardingStatus|Reflects the tenant onboarding status. The possible values are: `offboarded`, `offboardingInProgress`, `onboardingInProgress`, `onboarded`, `onboardingErrorOccurred`, `offboardingErrorOccurred`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tenantStatus",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tenantStatus",
  "id": "String (identifier)",
  "onboardingStatus": "String",
  "onboardingErrorMessage": "String"
}
```

