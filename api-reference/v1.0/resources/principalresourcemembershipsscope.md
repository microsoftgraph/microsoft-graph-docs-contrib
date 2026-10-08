---
title: "principalResourceMembershipsScope resource type"
description: "Allows for the selection of access review scope to review access of the selected principals to the selected resources."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/10/2026
---

# principalResourceMembershipsScope resource type

Namespace: microsoft.graph

In an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), the **scope** property can be configured with a **principalResourceMembershipsScope** object to review selected principals' access to selected resources.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|principalScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the principals whose access to resources are reviewed in the access review. Use an [accessReviewPrincipalScope](../resources/accessreviewprincipalscope.md) object to select a well-known population of principals, such as all guest users.|
|resourceScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the resources for which access is reviewed. Use an [accessReviewResourceScope](../resources/accessreviewresourcescope.md) object to identify the resource, or an [accessReviewAccessPackageAssignmentPolicyScope](../resources/accessreviewaccesspackageassignmentpolicyscope.md) object when the resource is an access package assignment policy.|

You must also specify the **@odata.type** type property with the value `#microsoft.graph.principalResourceMembershipsScope`. For more about configuration options for **scope** using **principalResourceMembershipsScope**, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept).

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.principalResourceMembershipsScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
  "principalScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "resourceScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```
