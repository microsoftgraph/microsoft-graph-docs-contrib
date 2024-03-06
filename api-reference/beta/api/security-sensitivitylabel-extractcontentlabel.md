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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensitivitylabel_extractcontentlabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensitivitylabel-extractcontentlabel-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

The following example shows the response.


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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sensitivitylabelthisextractcontentlabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/sensitivitylabelthisextractcontentlabel-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sensitivitylabelthisextractcontentlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sensitivitylabelthisextractcontentlabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensitivitylabelthisextractcontentlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sensitivitylabelthisextractcontentlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sensitivitylabelthisextractcontentlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sensitivitylabelthisextractcontentlabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
<!--
{
  "type": "#page.annotation",
  "description": "sensitivityLabel: extractContentLabel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/users:
      /users/{var}/security/informationProtection/sensitivityLabels/extractContentLabel
      Uri path requires navigating into unknown object hierarchy: missing property 'informationProtection' on 'security'. Possible issues:
  	 1) Doc bug where 'informationProtection' isn't defined on the resource.
  	 2) Doc bug where 'informationProtection' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'security' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
