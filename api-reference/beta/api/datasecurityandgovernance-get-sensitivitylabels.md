---
title: "dataSecurityAndGovernance: sensitivityLabels"
description: "Get the list of sensitivity labels available to a specific user or for the entire tenant."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# dataSecurityAndGovernance: sensitivityLabels

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of sensitivity labels available to a specific user or for the entire tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "purviewecosystem-sensitivitylabels-getsensitivitylabels-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-get-permissions.md)]

When using delegated permissions (`SensitivityLabels.Read`), the API returns labels scoped to the signed-in user.

When using application permissions (`SensitivityLabels.Read.All`), the API returns all labels for the tenant by default. Use the `scopeToUser` query parameter to retrieve labels for a specific user in the application context.

## HTTP request

Get labels for the signed-in user (delegated permissions) or all tenant labels (application permissions):

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels
```

Get labels for a specific user (application permissions):

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels?$filter=isScopedToUser eq {trueOrFalse}
```

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).                                |
| Accept-Language     | Optional. Specifies the preferred language for localizable fields like `name`, `description`, and `tooltip`. Format is based on RFC 4646 (for example, `en-US`, `fr-FR`). Defaults to the tenant's default language if omitted or not found. |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Query parameters

| Parameter      | Type             | Description                                                                                                                                                                                                                                                                                           |
| :------------- | :--------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| isScopedToUser | Boolean          | Optional. Used only with application permissions (`/security/...` path). If value set to 'true' to scope labels to the current user. If omitted with application permissions, returns all tenant labels. |
| locale         | String           | Optional. Specifies the locale for localizable fields.                                                                                                                                        |
| applicableTo   | String           | Optional. A comma-separated string of content formats (for example, `File,Email`). Filters the returned labels to only those applicable to *at least one* of the specified formats. See [Content Formats](#content-formats) for possible values.                                                                    |
| id             | String           | Optional. A comma-separated string of sensitivity label GUIDs. Filters the returned labels to only those matching the specified IDs. |

## Content Formats

The `applicableTo` parameter filters labels based on their applicability to different types of content or workloads. Possible values include:

| Value          | Description                                                                 |
| :------------- | :-------------------------------------------------------------------------- |
| Email          | Labels applicable specifically to emails.                                   |
| File           | Labels applicable to general files and items (including Copilot outputs). |
| SchematizedData| Labels applicable to Purview data map assets or other schematized data.   |
| Site           | Labels applicable to SharePoint sites.                                      |
| Teamwork       | Labels applicable to Microsoft Teams meetings.                              |
| UnifiedGroup   | Labels applicable to Microsoft 365 Groups.                                |

Providing multiple values (for example, `File,Email`) returns labels applicable to *either* `File` *or* `Email`.

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects in the response body.

## Examples

### Example 1: Get labels for the signed-in user (delegated)

#### Request

The following example shows a request to get labels for the signed-in user.

<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabels_user_delegated"
} -->
```http
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels
Authorization: Bearer {token}
Client-Request-Id: f1a2b3c4-d5e6-f7a8-b9c0-d1e2f3a4b5c6
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.sensitivityLabel)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/dataSecurityAndGovernance/sensitivityLabels",
  "value": [
    {
      "id": "4e4234dd-377b-42a3-935b-0e42f138fa23",
      "name": "General",
      "description": "General data, not for public use.",
      "color": "#000000",
      "priority": 10,
      "tooltip": "Apply this label to non-public general data.",
      "isEnabled": true,
      "isEndpointProtectionEnabled": false,
      "autoTooltip": "",
      "isSmimeSignEnabled": false,
      "actionSource": "manual",
      "applicableTo": "email,teamwork,file",
      "sublabels": []
    },
    {
      "id": "a7a21bba-8197-491f-a5d6-0d0f955397cf",
      "name": "Confidential",
      "description": "Confidential data.",
      "color": "#ff0000",
      "priority": 20,
      "tooltip": "Data that requires protection.",
      "isEnabled": true,
      "isEndpointProtectionEnabled": true,
      "autoTooltip": "",
      "isSmimeSignEnabled": true,
      "actionSource": "manual",
      "applicableTo": "email,teamwork,file",
      "sublabels": [
      ]
    }
  ]
}
```

### Example 2: Get tenant labels filtered by content format and ID (application)

#### Request

The following example shows a request to get labels for the tenant, filtered for the `File` content format and specific IDs.

<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabels_tenant_filtered_app"
} -->
```http
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels?$filter=applicableTo eq 'File' and id in ('4e4234dd-377b-42a3-935b-0e42f138fa23','b7a21bba-8197-491f-a5d6-0d0f955397ca')
Authorization: Bearer {token}
Client-Request-Id: a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5
```

#### Response

The following example shows the response containing only the labels matching the filters.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.sensitivityLabel)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/dataSecurityAndGovernance/sensitivityLabel",
  "value": [
    {
      "id": "4e4234dd-377b-42a3-935b-0e42f138fa23",
      "name": "General",
      "description": "General data, not for public use.",
      "color": "#000000",
      "priority": 10,
      "toolTip": "Apply this label to general non-public data.",
      "isEnabled": true,
      "isEndpointProtectionEnabled": true,
      "autoTooltip": "",
      "isSmimeSignEnabled": true,
      "isSmimeEncryptEnabled": true,
      "actionSource": "manual",
      "applicableTo": "email,teamwork,file",
      "sublabels": []
    }
  ]
}
```
