---
title: "accessReviewResourceScope resource type"
description: "Defines the type of resource that is reviewed in an access review."
author: "dotnet-enthusiast"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewResourceScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The accessReviewResourceScope object defines the type of resource that users have access to in an [access review](../resources/accessreviewsv2-overview.md). 


Inherits from [accessReviewScope](../resources/accessreviewscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String| The display name of the resource. |
|resourceId|String| The identifier of the resource. |
|scopeType|accessReviewResourceScopeType| The type of the resource. The possible values are: `group`, `catalog`, `servicePrincipal`, `directoryRole`, `accessPackageAssignmentPolicy`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewResourceScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewResourceScope",
  "resourceId": "String",
  "scopeType": "String",
  "displayName": "String"
}
```

