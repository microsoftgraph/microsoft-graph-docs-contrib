---
title: "List sensitivityLabels"
description: "Get the sensitivityLabel resources from the sensitivityLabels navigation property."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List sensitivityLabels

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects associated with a user or organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_informationprotection_list_sensitivitylabels" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-informationprotection-list-sensitivitylabels-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
To get labels available to the signed-in user (delegated permission) or a specified user (application permission):

``` http
GET /users/{usersId}/security/informationProtection/sensitivityLabels
GET /me/security/informationProtection/sensitivityLabels
```

To get labels available to the organization as a service principal (application permission):

```http
GET /security/informationProtection/sensitivityLabels
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

If successful, this method returns a `200 OK` response code and a collection of [sensitivityLabel](../resources/security-sensitivitylabel.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sensitivitylabel",
  "sampleKeys": ["bob@contoso.com"]
}
-->

``` http
GET https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabels
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-sensitivitylabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-sensitivitylabel-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-sensitivitylabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-sensitivitylabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-sensitivitylabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-sensitivitylabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-sensitivitylabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-sensitivitylabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "list_sensitivitylabel",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensitivityLabel",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels",
  "value": [
    {
      "id": "0d39dc11-75ff-4309-8b32-ff94f0e41607",
      "name": "Any User (No Protection)",
      "description": "",
      "color": "",
      "sensitivity": 7,
      "tooltip": "The most sensitive information stored by Milt0rCorp; product plans, customer information, and other trade secrets. Data labeled for Any User will not be protected and should be used with caution and sparingly.",
      "isActive": true,
      "isAppliable": true,
      "contentFormats": [
        "file",
        "email",
        "schematizeddata"
      ],
      "hasProtection": false,
      "parent@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40constoso.com')/security/informationProtection/sensitivityLabels('0d39dc11-75ff-4309-8b32-ff94f0e41607')/parent/$entity",
      "parent": {
        "id": "566663c7-4d8d-4b8f-b280-784a31971dbe",
        "name": "Highly Confidential",
        "description": "",
        "color": "",
        "sensitivity": 7,
        "tooltip": "The most sensitive information at Milt0rCorp; product plans, customer information, data not shareable even under NDA.",
        "isActive": false,
        "isAppliable": false,
        "contentFormats": [
          "file",
          "email",
          "schematizeddata"
        ],
        "hasProtection": false,
        "parent@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bob%40contoso.com')/security/informationProtection/sensitivityLabels('0d39dc11-75ff-4309-8b32-ff94f0e41607')/parent/parent/$entity",
        "parent": null
      }
    }
  ]
}
```

