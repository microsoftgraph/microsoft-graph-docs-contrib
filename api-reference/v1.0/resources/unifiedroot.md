---
title: "unifiedRoot resource type"
description: "Container resource that groups the unified (vNext) access review collections under the accessReviews/unified path segment."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 06/30/2026
---

# unifiedRoot resource type

Namespace: microsoft.graph

Container resource that groups the unified access review collections under the `identityGovernance/accessReviews/unified` path segment. The `unified` route is the entry point for **user-centric (catalog-scope) access reviews**, where an administrator reviews a user's access across all the resources contained in an [entitlement management catalog](../resources/accesspackagecatalog.md) in a single review, rather than reviewing one resource at a time.

A catalog is a container that groups multiple resource types—currently groups and applications. With a user-centric review, a reviewer (typically the user's manager) evaluates a principal's access to every group and application in the catalog from a single, consolidated view. The collections reuse the same [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), [accessReviewInstance](../resources/accessreviewinstance.md), and [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) resource shapes as the generally available access reviews API; the catalog scope is expressed through the [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) of the review definition.

This resource is reached through the **unified** relationship on the [accessReviewSet](../resources/accessreviewset.md) resource.

The following table summarizes how the unified route differs from the current access reviews API.

| Aspect | Current access reviews (`accessReviews`) | Unified access reviews (`accessReviews/unified`) |
|:---|:---|:---|
| Review focus | Reviews a single resource at a time (one group, application, directory role, or access package). | User-centric: reviews a principal's access across all groups and applications in a catalog in one review. |
| Scope model | Typically an [accessReviewQueryScope](../resources/accessreviewqueryscope.md) targeting one resource. | A [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) with a resource scope of `scopeType: catalog`. |
| Routing | Addressed under `identityGovernance/accessReviews`. | Addressed under `identityGovernance/accessReviews/unified`. The path segment is self-describing, discoverable in metadata, and works with the Microsoft Graph SDKs and Graph Explorer. |

Inherits from [entity](entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List definitions](../api/unifiedroot-list-definitions.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Retrieve the user-centric (catalog-scope) [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects through the unified route.|
|[Create definition](../api/unifiedroot-post-definitions.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Create a new user-centric (catalog-scope) [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object through the unified route.|

Only listing and creating definitions are documented as dedicated **unified** methods, because creating a catalog-scope review is the one operation that is specific to the unified route. After a definition is created, its instances, stages, and decisions are managed through the shared [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), [accessReviewInstance](../resources/accessreviewinstance.md), and [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) operations (for example, get, update, delete, list instances, stop, and apply decisions), addressed under the `identityGovernance/accessReviews/unified` path segment.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|decisions|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Represents the unified (vNext) access review decisions on an instance of a review.|
|definitions|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Represents the unified (vNext) template and scheduling for an access review.|
|instances|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Represents the unified (vNext) instance of a review.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoot"
}
```
