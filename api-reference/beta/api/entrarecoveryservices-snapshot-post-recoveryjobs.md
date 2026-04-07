---
title: "Create recoveryJob"
description: "Create a new recovery job to restore the tenant's directory objects to a snapshot state."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create recoveryJob

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) object to restore the tenant's directory objects to a specific snapshot state. This operation follows the resource-based long running operation (RELO) pattern and returns a `202 Accepted` response with a `Location` header pointing to the job resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entrarecoveryservices_snapshot_post_recoveryjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-snapshot-post-recoveryjobs-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-write](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/recovery/snapshots/{snapshot-id}/recoveryJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, optionally supply a JSON representation with the following property.

|Property|Type|Description|
|:---|:---|:---|
|filteringCriteria|[microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase](../resources/entrarecoveryservices-recoveryjobfilteringcriteriabase.md)|Optional. Filtering criteria to scope the job to specific entity types or entity IDs. If not specified, all supported entities are included. Use `@odata.type` to specify the derived type: `#microsoft.graph.entraRecoveryServices.recoveryJobEntityNamesFilter` or `#microsoft.graph.entraRecoveryServices.recoveryJobEntityNameAndIdsFilter`.|

## Response

If successful, this method returns a `202 Accepted` response code with a `Location` header pointing to the created job resource.

## Examples

### Example 1: Create a recovery job without filtering

The following example creates a recovery job for all changes.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_recoveryjob_nofilter"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-recoveryjob-nofilter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4
```

### Example 2: Create a recovery job filtered by entity types

The following example creates a recovery job for only user entity changes.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_recoveryjob_entitytypes"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs
Content-Type: application/json

{
  "filteringCriteria": {
    "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJobEntityNamesFilter",
    "entityTypes": [
      "user"
    ]
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-recoveryjob-entitytypes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4
```

### Example 3: Create a recovery job filtered by specific entity IDs

The following example creates a recovery job for specific users and groups.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_recoveryjob_entityids"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs
Content-Type: application/json

{
  "filteringCriteria": {
    "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJobEntityNameAndIdsFilter",
    "filterValues": [
      {
        "entityType": "user",
        "entityIds": [
          "52330fde-895a-4a99-ae59-1c35c2a263e9",
          "0c503c02-5554-4d59-9fcc-69736618fb8f"
        ]
      },
      {
        "entityType": "group",
        "entityIds": [
          "04181a71-a18d-4eee-94da-a77e7eb6520b",
          "2c888900-a7e8-4a01-ada5-17c04b29e8ec"
        ]
      }
    ]
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-recoveryjob-entityids-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/fa0f72f4-68e8-4625-846f-38865c49a086
```
