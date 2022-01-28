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

To get labels available to the signed-in user or specified user:
``` http
GET /users/{usersId}/security/informationProtection/sensitivityLabels/{sensitivityLabelId}
GET /me/security/informationProtection/sensitivityLabels/{sensitivityLabelId}
```

Getting a label on behalf of another user requires the application permission `InformationProtectionPolicy.Read.All`.

To get labels available to the organization:
```http
GET /security/informationProtection/sensitivityLabels/{sensitivityLabelId}
```

Getting a label from the organizational list requires the application permission `InformationProtectionPolicy.Read.All`.

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

If successful, this method returns a `200 OK` response code and a [sensitivityLabel](../resources/security-sensitivitylabel.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_sensitivitylabel"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/security/informationProtection/sensitivityLabel/{5aa3cb3c-f0bd-9d1f-bc54-af399bed88e2}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensitivityLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.sensitivityLabel",
    "color": "String",
    "contentFormats": [
      "String"
    ],
    "description": "Consult Contoso data labeling policy for more details.",
    "hasProtection": "True",
    "id": "5aa3cb3c-f0bd-9d1f-bc54-af399bed88e2",
    "isActive": "True",
    "isAppliable": "True",
    "name": "Highly Confidential",
    "sensitivity": "2",
    "tooltip": "Data classified as Contoso Highly Confidential."
  }
}
```

