---
title: "sensitivityLabel: computeInheritance"
description: "Calculate the sensitivity label that should be inherited by an output artifact, given a set of sensitivity labels from input or referenced artifacts."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensitivityLabel: computeInheritance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Calculate the sensitivity label that should be inherited by an output artifact, given a set of sensitivity labels from input or referenced artifacts.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sensitivitylabel-computeinheritance-permissions"
} -->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-computeinheritance-permissions.md)]

## HTTP request

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance
```

## Filter parameters

| Parameter      | Type                  | Description                                                                                                                                                                                                                                                                                           |
| :------------- | :-------------------  | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| contentFormats | Collection of Strings | Optional. A collection of comma-separated string of content formats (for example, `File`,`Email`). Filters the returned labels to only those applicable to *at least one* of the specified formats. See [Content Formats](#content-formats) for possible values.|
| locale         | String                | Optional. Specifies the locale for localizable fields. |
| labelIds       | Collection of Strings | Optional. A collection of comma-separated string of sensitivity label GUIDs. Filters the returned labels to only those matching the specified IDs. |

## Content Formats

The `contentFormats` parameter filters labels based on their applicability to different types of content or workloads. Possible values include:

| Value          | Description                                                                 |
| :------------- | :-------------------------------------------------------------------------- |
| File           | Labels applicable to general files and items (including Copilot outputs). |
| Email          | Labels applicable specifically to emails.                                   |
| Site           | Labels applicable to SharePoint sites.                                      |
| UnifiedGroup   | Labels applicable to Microsoft 365 Groups.                                |
| Teamwork       | Labels applicable to Microsoft Teams meetings.                              |
| SchematizedData| Labels applicable to Purview data map assets or other schematized data.   |

When computing inheritance, only input labels applicable to *at least one* of the specified `contentFormats` are considered.

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).                                |
| Content-Type        | application/json. Required.                                                                                                                 |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Request body

In the request body, supply a JSON object with the following parameters.

| Parameter      | Type              | Description                                                                                                                                                                            |
| :------------- | :---------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| labelIds       | String collection | Required. A collection of sensitivity label GUIDs from the input or referenced artifacts.                                                                                              |
| locale         | String            | Optional. Overrides the `Accept-Language` header. Specifies the locale for the returned `sensitivityLabel` object. If omitted, uses `Accept-Language` or the tenant default.      |
| contentFormats | String collection | Optional. A collection of content formats (for example, `File`, `Email`) applicable to the *output* artifact. Filters the input `labelIds` to consider only those applicable to these formats during inheritance calculation. See [Content Formats](#content-formats) for possible values. |

## Response

If successful, this method returns a `200 OK` response code and a single [sensitivityLabel](../resources/security-sensitivitylabel.md) object in the response body, representing the calculated inherited label.

If no applicable label is found based on the input and filters, or if an error occurs (for example, invalid label ID provided), the API might return an error response (for example, `400 Bad Request` or `404 Not Found`) with details in an [error object](/graph/errors).

## Examples

### Request

The following example shows a request to compute the inherited label from input label, considering only labels applicable to the `File` content format.

<!-- {
  "blockType": "request",
  "name": "compute_inheritance_from_labels"
} -->
```http
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance(labelIds=["4e4234dd-377b-42a3-935b-0e42f138fa23"],locale='en-US',contentFormats=["File"])
Authorization: Bearer {token}
Content-Type: application/json
Client-Request-Id: c5e4d3b2-a1f0-e9d8-c7b6-a5e4d3b2a1f0

"4e4234dd-377b-42a3-935b-0e42f138fa23"  // General (Sensitivity 10, File/Email)
```

### Response

The following example shows the response. The "Confidential" label is returned because it's the most sensitive label among the inputs that supports the `File` content format.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensitivityLabel"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.sensitivityLabel",
  "id": "a7a21bba-8197-491f-a5d6-0d0f955397cf",
  "name": "Confidential",
  "description": "Confidential data.",
  "color": "#ff0000",
  "priority": 0,
  "toolTip": "Data that requires protection.",
  "isEnabled": true,
  "isEndpointProtectionEnabled": true,
  "autoTooltip": "",
  "isSmimeSignEnabled": true,
  "isSmimeEncryptEnabled": true,
  "actionSource": "manual",
  "applicableTo": "email,teamwork,file",
  "sublabels": []
}
```
