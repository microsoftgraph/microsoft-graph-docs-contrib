---
title: "Get sensitivityLabel"
description: "Read the properties and relationships of a sensitivityLabel object."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get sensitivityLabel
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [sensitivityLabel](../resources/security-sensitivitylabel.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensitivitylabel_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensitivitylabel-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get a label as the signed-in user (delegated permission) or a specified user (application permission):

``` http
GET /users/{usersId}/security/informationProtection/sensitivityLabels/{sensitivityLabelId}
GET /me/security/informationProtection/sensitivityLabels/{sensitivityLabelId}
```

To get labels available to the organization as a service principal (application permission):

```http
GET /security/informationProtection/sensitivityLabels/{sensitivityLabelId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [sensitivityLabel](../resources/security-sensitivitylabel.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabel",
  "sampleKeys": ["bob@contoso.com", "5aa3cb3c-f0bd-9d1f-bc54-af399bed88e2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabel/5aa3cb3c-f0bd-9d1f-bc54-af399bed88e2
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "get_sensitivitylabel",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensitivityLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels/$entity",
    "id": "0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3",
    "name": "FTEs, Approved Partners, and Vendors",
    "description": "",
    "color": "",
    "sensitivity": 2,
    "tooltip": "This label is intended to protect NDA-level data and share with external and internal vendors and partners, as well as all FTEs. FTEs will have full control of the protected information.",
    "isActive": true,
    "isAppliable": true,
    "contentFormats": [
        "file",
        "email",
        "site",
        "unifiedgroup",
        "schematizeddata"
    ],
    "hasProtection": true
}
```

