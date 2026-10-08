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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

Only listing and creating definitions are documented as dedicated **unified** methods, because creating a catalog-scope review is the one operation that is specific to the unified route. After a definition is created, its instances, stages, and decisions are managed through the shared [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), [accessReviewInstance](../resources/accessreviewinstance.md), and [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) operations (for example, get, update, delete, list instances, stop, and apply decisions), addressed under the `identityGovernance/accessReviews/unified` path segment. The **Examples** section shows these shared operations against the unified path and links to the corresponding method pages.

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

## Examples

Creating and listing user-centric (catalog-scope) definitions are documented on the method pages [List definitions](../api/unifiedroot-list-definitions.md) and [Create definition](../api/unifiedroot-post-definitions.md). The following examples show how to navigate a definition's instances and decisions and apply results through the `unified` route. Each request is addressed under the `identityGovernance/accessReviews/unified` path segment.

### Example 1: List instances of a unified access review definition

The following example lists the [accessReviewInstance](../resources/accessreviewinstance.md) objects for a user-centric definition. For code samples in the Microsoft Graph SDKs, see [List instances](../api/accessreviewscheduledefinition-list-instances.md).

#### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448/instances
```

#### Response

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/unified/definitions('29f2d16e-9ca6-4052-bbfe-802c48944448')/instances",
    "value": [
        {
            "id": "e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f",
            "status": "InProgress",
            "startDateTime": "2026-08-31T00:00:00Z",
            "endDateTime": "2026-09-06T00:00:00Z"
        }
    ]
}
```

### Example 2: List the principals under review for an instance

The following example groups the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects by principal to return the distinct users whose access is being reviewed in the instance. For code samples in the Microsoft Graph SDKs, see [List decisions](../api/accessreviewinstance-list-decisions.md).

#### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448/instances/e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f/decisions?$apply=groupby((principal/id,principal/displayName))
```

#### Response

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/unified/definitions('29f2d16e-9ca6-4052-bbfe-802c48944448')/instances('e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f')/decisions",
    "value": [
        {
            "principal": {
                "id": "a4c6f1e2-6f2d-4b8a-9c3e-2f1a0b5d7e9c",
                "displayName": "Alex Wilber"
            }
        }
    ]
}
```

### Example 3: List decisions for an instance

The following example lists the individual [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects—one per principal and resource—for a user-centric review instance. For code samples in the Microsoft Graph SDKs, see [List decisions](../api/accessreviewinstance-list-decisions.md).

#### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448/instances/e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f/decisions
```

#### Response

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/unified/definitions('29f2d16e-9ca6-4052-bbfe-802c48944448')/instances('e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f')/decisions",
    "value": [
        {
            "id": "9f8c2b1a-3d4e-4f5a-8b6c-7d8e9f0a1b2c",
            "decision": "NotReviewed",
            "principal": {
                "id": "a4c6f1e2-6f2d-4b8a-9c3e-2f1a0b5d7e9c",
                "displayName": "Alex Wilber"
            },
            "resource": {
                "id": "b74444cb-038a-4802-8fc9-b9d1ed0cf11f",
                "displayName": "Marketing"
            }
        }
    ]
}
```

### Example 4: Stop a unified access review instance

The following example stops an in-progress user-centric review instance. For code samples in the Microsoft Graph SDKs, see [accessReviewInstance: stop](../api/accessreviewinstance-stop.md).

#### Request

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448/instances/e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f/stop
```

#### Response

```http
HTTP/1.1 204 No Content
```

### Example 5: Apply the decisions of a unified access review instance

The following example applies the recorded decisions of a completed user-centric review instance. For code samples in the Microsoft Graph SDKs, see [accessReviewInstance: applyDecisions](../api/accessreviewinstance-applydecisions.md).

#### Request

```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448/instances/e6cf9d5b-6222-4e6f-9f7e-1c2f4e0b5a2f/applyDecisions
```

#### Response

```http
HTTP/1.1 204 No Content
```

### Example 6: Delete a unified access review definition

The following example deletes a user-centric [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md). For code samples in the Microsoft Graph SDKs, see [Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md).

#### Request

```http
DELETE https://graph.microsoft.com/beta/identityGovernance/accessReviews/unified/definitions/29f2d16e-9ca6-4052-bbfe-802c48944448
```

#### Response

```http
HTTP/1.1 204 No Content
```
