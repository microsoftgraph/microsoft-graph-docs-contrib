---
title: "accessReviewCatalogScope resource type"
description: "Represent an entitlement management catalog as the resource scope of an access review."
author: "jyothig123"
ms.date: 09/03/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewCatalogScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents an entitlement management catalog as the resource scope of an [access review](../resources/accessreviewsv2-overview.md). Use this type in the **resourceScopes** collection of a [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) object configured in the **scope** property of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md).

Groups, applications, and custom data provided resources in the catalog are always reviewed. Use the **additionalCatalogResourceTypes** property to review other resource types in the same catalog, in addition to the resource types that are always reviewed.

Inherits from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|additionalCatalogResourceTypes|[accessReviewCatalogResourceType](../resources/enums.md#accessreviewcatalogresourcetype-values)|The resource types in the catalog to review, in addition to the resource types that are always reviewed. The possible values are: `none`, `accessPackage`, `unknownFutureValue`.<br/><br/>The **additionalCatalogResourceTypes** property is a multi-valued enumeration and the property can contain multiple values in a comma-separated list. If you omit this property, only the resource types that are always reviewed are included in the review.|
|displayName|String| The display name of the catalog. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).|
|resourceId|String| The identifier of the catalog. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).|
|scopeType|[accessReviewResourceScopeType](../resources/enums.md#accessreviewresourcescopetype-values)|The scope type. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md). The value is `catalog`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewCatalogScope"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.accessReviewCatalogScope",
  "resourceId": "String",
  "scopeType": "String",
  "displayName": "String",
  "additionalCatalogResourceTypes": "String"
}
```
