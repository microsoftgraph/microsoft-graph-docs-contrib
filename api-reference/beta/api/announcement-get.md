---
title: "Get announcement"
description: "Read the properties and relationships of an announcement object."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get announcement

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [announcement](../resources/announcement.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "announcement-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/announcement-get-permissions.md)]

Any user can call these APIs, there are no admin role requirements.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges/microsoft.graph.announcement/{id}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [announcement](../resources/announcement.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_announcement"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges/microsoft.graph.announcement/ddde9e3b-7ee4-4066-a62e-fb1fc5fb87a1
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.announcement"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.announcement",
    "id": "ddde9e3b-7ee4-4066-a62e-fb1fc5fb87a1",
    "changeItemState": "available",
    "changeItemService": "mfA",
    "tags": [
      "Identity Modernization"
    ],
    "systemTags": [
      "entra_change_announcements_90days"
    ],
    "documentationUrls": [
      "https://learn.microsoft.com/en-us/entra/identity/authentication/how-to-migrate-mfa-server-to-azure-mfa?WT.mc_id=Portal-Microsoft_AAD_IAM"
    ],
    "shortDescription": "Azure Multi-Factor Authentication Server (MFA Server) isn't available for new deployments and will be deprecated. Customers who are using MFA Server should move to using cloud-based Microsoft Entra multifactor authentication.",
    "title": "Migrate from MFA Server to Microsoft Entra multifactor authentication",
    "description": "*Omitted for brevity*",
    "announcementDateTime": "2022-09-30T00:00:00Z",
    "targetDateTime": "2024-09-30T00:00:00Z",
    "impactLink": null,
    "isCustomerActionRequired": true
  }
}
```
