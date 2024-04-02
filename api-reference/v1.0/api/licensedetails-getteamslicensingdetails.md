---
title: "licenseDetails: getTeamsLicensingDetails"
description: "Get the license status of a user in Microsoft Teams."
author: "mea"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
---

# licenseDetails: getTeamsLicensingDetails

Namespace: microsoft.graph

Get the license status of a [user](../resources/user.md) in Microsoft Teams.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "licensedetails_getteamslicensingdetails" } -->
[!INCLUDE [permissions-table](../includes/permissions/licensedetails-getteamslicensingdetails-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/licenseDetails/getTeamsLicensingDetails
```

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code along with a [teamsLicensingDetails](../resources/teamslicensingdetails.md) object.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_teamworkSettings_for_organization",
}-->
```http
GET https://graph.microsoft.com/beta/teamwork
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsLicensingDetails"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.teamsLicensingDetails",
    "hasTeamsLicense": true
}
```

## Related content

- [Get userTeamwork](userteamwork-get.md)
- [Get teamwork](teamwork-get.md)
