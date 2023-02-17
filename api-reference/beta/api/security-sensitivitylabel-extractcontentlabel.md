---
title: "sensitivityLabel: extractContentLabel"
description: "Retrieve the contentLabel using the metadata from a labeled object."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# sensitivityLabel: extractContentLabel

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the metadata that exists on an already-labeled piece of information to resolve the metadata to a specific sensitivity label. The [contentInfo](../resources/security-contentinfo.md) input is resolved to [informationProtectionContentLabel](../resources/security-contentlabel.md).

>[!NOTE]
>The [contentLabel](../resources/security-contentlabel.md) resource represents a sensitivity label that has been applied to a piece of information. [sensitivityLabels](../resources/security-sensitivitylabel.md) objects are the abstract labels that are part of the organizational labeling policy and can be applied to the information.

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

To extract the content label as the signed-in user (delegated permission) or a specified user (application permission):

``` http
POST /users/{usersId}/security/informationProtection/sensitivityLabels/extractContentLabel
POST /users/me/security/informationProtection/sensitivityLabels/extractContentLabel
```

To extract the content label as a service principal (application permission):

``` http
POST /users/security/informationProtection/sensitivityLabels/extractContentLabel
```

## Request headers

| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required.                                                                                                                                                         |
| Content-type  | Content-type: application/json. Required.                                                                                                                                         |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that can be used with this action.

| Parameter   | Type                                       | Description                                                                                                                         |
| :---------- | :----------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| contentInfo | [contentInfo](../resources/security-contentinfo.md) | Provides details about the content format, content state, and existing [metadata](../resources/security-keyvaluepair.md) as key-value pairs. |

## Response

If successful, this action returns a `200 OK` response code and a [contentLabel](../resources/security-contentlabel.md) object in the response body.

## Examples

### Response

The following is an example of the response.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.extractcontentlabel",
  "sampleKeys": ["bob@contoso.com"]
}
-->
```http
POST https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabels/extractContentLabel
Content-type: application/json
User-agent: ContosoLOBApp/1.0

{
    "contentInfo": {
        "format": "default",
        "identifier": "MyDoc.docx",
        "state": "rest",
        "metadata": [
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled",
                "value": "True"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method",
                "value": "Standard"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate",
                "value": "1/1/0001 12:00:00 AM"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId",
                "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name",
                "value": "LabelScopedToBob_Tests"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits",
                "value": "0"
            },
            {
                "name": "MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ActionId",
                "value": "00000000-0000-0000-0000-000000000000"
            }
        ]
    }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensitivitylabelthisextractcontentlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sensitivitylabelthisextractcontentlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sensitivitylabelthisextractcontentlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sensitivitylabelthisextractcontentlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "name": "sensitivitylabelthis.extractcontentlabel",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentLabel"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.contentLabel",
    "createdDateTime": "2001-01-01T12:00:00Z",
    "assignmentMethod": "standard",
    "sensitivityLabelId": "0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3"
}
```
