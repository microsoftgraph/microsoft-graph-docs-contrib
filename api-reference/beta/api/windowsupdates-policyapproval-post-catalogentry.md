---
title: "Add catalogEntry"
description: "Add catalogEntry by posting to the catalogEntry collection."
author: "andredm7"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Add catalogEntry

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add catalogEntry by posting to the catalogEntry collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policyapproval-post-catalogentry-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policyapproval-post-catalogentry-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/approvals/{policyApprovalId}/catalogEntry/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) object.

You can specify the following properties when creating a **catalogEntry**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|deployableUntilDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|releaseDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `204 No Content` response code and a [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_catalogentry_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/approvals/{policyApprovalId}/catalogEntry/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalogEntry",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.catalogEntry"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalogEntry",
  "id": "bc244d32-2f8e-5e34-c27a-746ce1072af2",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)"
}
```

