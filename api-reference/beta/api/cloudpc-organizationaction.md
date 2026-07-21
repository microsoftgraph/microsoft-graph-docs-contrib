---
title: "cloudPC: organizationAction"
description: "Trigger a Cloud PC organization action."
author: "sqbing"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 02/12/2026
---

# cloudPC: organizationAction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger a Cloud PC organization action.


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_organizationaction" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-organizationaction-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To trigger a Cloud PC organization action using delegated permission:

```http
POST /deviceManagement/virtualEndpoint/organizationAction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|actionType|[cloudPcOrganizationActionType](../resources/cloudpcorganizationactiondetail.md#cloudpcorganizationactiontype-values)|The action type. Possible values are `activate`, `deactivate`, and `unknownFutureValue`. Required.|

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcOrganizationActionDetail](../resources/cloudpcorganizationactiondetail.md) object in the response body.

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc_organizationaction"
} -->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/organizationAction
Content-Type: application/json

{
  "actionType": "activate"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcOrganizationActionDetail"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.cloudPcOrganizationActionDetail",
  "actionType": "activate",
  "status": "inProgress",
  "errorDescription": null
}
```
