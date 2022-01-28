---
title: "Get informationProtectionPolicySetting"
description: "Fetches users-specific MIP policy settings for the user."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get informationProtectionPolicySetting
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object. The settings exposed by this API should be used in applications to populate the *more info URL* for MIP help, whether labeling is mandatory for the user, and whether justification must be provided on downgrade. 

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
``` http
GET /users/{usersId}/security/informationProtection/labelPolicySettings
```

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

If successful, this method returns a `200 OK` response code and an [informationProtectionPolicySetting](../resources/security-informationprotectionpolicysetting.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_informationprotectionpolicysetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/security/informationProtection/labelPolicySettings
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.informationProtectionPolicySetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetamipdev/$metadata#users('admin%40AzTestRmsPremUS22.onmicrosoft.com')/security/informationProtection/labelPolicySettings/$entity",
    "id": "BFB31DC0E2183F5872EEC3FEC1A254B8118DF1156CC19E783EA6D36304242B7FCFA4CF1DA3374481AA9919D8F3D63F7C",
    "moreInfoUrl": "https://contoso.com/MIPInfo",
    "isMandatory": false,
    "isDowngradeJustificationRequired": true
}
```

