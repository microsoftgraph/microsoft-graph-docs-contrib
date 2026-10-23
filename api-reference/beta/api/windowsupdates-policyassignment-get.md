---
title: "Get policy assignment"
description: "Get a Windows Autopatch policy assignment for a managed device."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get policy assignment

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [policyAssignment](../resources/windowsupdates-policyassignment.md) resource that associates a Windows Autopatch policy with a device.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policyassignment-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policyassignment-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/data/policyAssignments/{policyAssignmentId}
```

## Optional query parameters

This method supports the `$expand` and `$select` OData query parameters. For `$expand`, only the `deviceProfile` relationship is supported. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.policyAssignment](../resources/windowsupdates-policyassignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_policyassignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/data/policyAssignments/bc11d699-c171-bde8-e0d6-33a182d12841
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.policyAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyAssignment",
  "id": "bc11d699-c171-bde8-e0d6-33a182d12841",
  "policyId": "11111111-1111-4111-8111-111111111111",
  "policyName": "Contoso driver policy",
  "azureAdDeviceId": "66666666-6666-4666-8666-666666666666"
}
```
