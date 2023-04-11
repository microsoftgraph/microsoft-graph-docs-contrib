---
title: "Get sensitivityLabel"
description: "Read the properties and relationships of a sensitivityLabel object."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get sensitivityLabel
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [sensitivityLabel](../resources/security-sensitivitylabel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | InformationProtectionPolicy.Read            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | InformationProtectionPolicy.Read.All        |

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
| Authorization | Bearer {token}. Required.                                                                                                                                                         |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body

Do not supply a request body for this method.

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

The following is an example of the response.

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

