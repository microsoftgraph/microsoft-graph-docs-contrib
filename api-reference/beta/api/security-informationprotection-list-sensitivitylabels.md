---
title: "List sensitivityLabels"
description: "Get the sensitivityLabel resources from the sensitivityLabels navigation property."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List sensitivityLabels
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the sensitivityLabel resources from the sensitivityLabels navigation property.

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
To get labels available to the signed-in user or specified user:
``` http
GET /users/{usersId}/security/informationProtection/sensitivityLabels
GET /me/security/informationProtection/sensitivityLabels
```

Listing labels on behalf of another user requires the application permission `InformationProtectionPolicy.Read.All`.

To get labels available to the organization:
```http
GET /security/informationProtection/sensitivityLabels
```

Listing labels for the organization requires the application permission `InformationProtectionPolicy.Read.All`.

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required.                                                                                                                                                         |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is ApplicationName/Version. Optional. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sensitivityLabel](../resources/sensitivitylabel.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_sensitivitylabel"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/security/informationProtection/sensitivityLabels
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.sensitivityLabel)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels",
    "value": [
        {
            "id": "285ccb20-8260-4b1a-9e08-b5e051ffc848",
            "name": "Contoso Public",
            "description": "",
            "color": "",
            "sensitivity": 1,
            "tooltip": "Data labeled as Contoso Confidential.",
            "isActive": true,
            "isAppliable": true,
            "contentFormats": [
                "file",
                "email"
            ],
            "hasProtection": false,
            "parent@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels('285ccb20-8260-4b1a-9e08-b5e051ffc848')/parent/$entity",
            "parent": null
        },
        {
            "id": "8cf764ac-ef2b-4787-8ccd-0a8a65e7bafa",
            "name": "Contoso Confidential",
            "description": "",
            "color": "",
            "sensitivity": 4,
            "tooltip": "Data labeled as Contoso Confidential",
            "isActive": false,
            "isAppliable": false,
            "contentFormats": [
                "file",
                "email"
            ],
            "hasProtection": false,
            "parent@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels('8cf764ac-ef2b-4787-8ccd-0a8a65e7bafa')/parent/$entity",
            "parent": null
        },
        {
            "id": "a20cbae4-0c05-448c-b342-cb6c618d0957",
            "name": "Full Time Employees",
            "description": "",
            "color": "",
            "sensitivity": 4,
            "tooltip": "Data labeled as Contoso Confidential \ Full Time Employees.",
            "isActive": true,
            "isAppliable": true,
            "contentFormats": [
                "file",
                "email"
            ],
            "hasProtection": false,
            "parent@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels('a20cbae4-0c05-448c-b342-cb6c618d0957')/parent/$entity",
            "parent": {
                "id": "8cf764ac-ef2b-4787-8ccd-0a8a65e7bafa",
                "name": "Contoso Confidential",
                "description": "",
                "color": "",
                "sensitivity": 4,
                "tooltip": "Data labeled as Contoso Confidential",
                "isActive": false,
                "isAppliable": false,
                "contentFormats": [
                    "file",
                    "email"
                ],
                "hasProtection": false
            }
        }
    ]
}
```

