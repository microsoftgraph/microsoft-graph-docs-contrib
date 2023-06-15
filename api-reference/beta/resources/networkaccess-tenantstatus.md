---
title: "tenantStatus resource type"
description: "TenantStatus is a top level entity under networkAccess which represents a tenant status."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# tenantStatus resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

TenantStatus is a top level entity under networkAccess which represents a tenant status.	

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get tenantStatus](../api/networkaccess-tenantstatus-get.md)|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object.|
|[Update tenantStatus](../api/networkaccess-networkaccessroot-post-tenantstatus.md)|[microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md)|Update the properties of a [microsoft.graph.networkaccess.tenantStatus](../resources/networkaccess-tenantstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|onboardingErrorMessage|String|Reflects a message to the user in case of an error|
|onboardingStatus|microsoft.graph.networkaccess.onboardingStatus|Reflects the tenant onboarding status. The possible values are: `offboarded`, `offboardingInProgress`, `onboardingInProgress`, `onboarded`, `onboardingErrorOccurred`, `offboardingErrorOccurred`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

