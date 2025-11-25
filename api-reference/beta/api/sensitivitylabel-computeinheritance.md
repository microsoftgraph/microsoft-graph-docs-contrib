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

<!-- { "blockType": "permissions", "name": "sensitivitylabel_computeinheritance" } -->
[!INCLUDE [permissions-table](../includes/permissions/sensitivitylabel-computeinheritance-permissions.md)]

## HTTP request

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance
```

## Filter parameters

| Parameter      | Type                  | Description                                                                                                                                                                                                                                                                                           |
| :------------- | :-------------------  | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| applicableTo   | String           | Optional. A comma-separated string of content formats (for example, `File,Email`). Filters the returned labels to only those applicable to *at least one* of the specified formats. Possible values are `Email`,`File`,`SchematizedData`,`Site`,`Teamwork`,`UnifiedGroup`. |
| locale         | String                | Optional. Specifies the locale for localizable fields. |
| labelIds       | Collection of Strings | Optional. A collection of comma-separated string of sensitivity label GUIDs. Filters the returned labels to only those matching the specified IDs. |

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).                                |
| Content-Type        | application/json. Required.                                                                                                                 |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a single [sensitivityLabel](../resources/security-sensitivitylabel.md) object in the response body, representing the calculated inherited label.

If no applicable label is found based on the input and filters, or if an error occurs (for example, invalid label ID provided), the API might return an error response (for example, `400 Bad Request` or `404 Not Found`) with details in an [error object](/graph/errors).

## Examples

### Request

The following example shows a request to compute the inherited label from input label, considering only labels applicable to the `File` content format.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "compute_inheritance_from_labels"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance(labelIds=["4e4234dd-377b-42a3-935b-0e42f138fa23"],locale='en-US',contentFormats=["File"])
Authorization: Bearer {token}
Content-Type: application/json
Client-Request-Id: c5e4d3b2-a1f0-e9d8-c7b6-a5e4d3b2a1f0

"4e4234dd-377b-42a3-935b-0e42f138fa23"  // General (Sensitivity 10, File/Email)
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/compute-inheritance-from-labels-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response. The **confidential** label is returned because it's the most sensitive label among the inputs that supports the `File` content format.

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
  "hasProtection": true,
  "autoTooltip": "",
  "actionSource": "manual",
  "applicableTo": "email,teamwork,file",
  "sublabels": []
}
```
