---
title: "sensitivityLabel: evaluateRemoval"
description: "Evaluate which label to remove and how to remove it based on an existing content information."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# sensitivityLabel: evaluateRemoval
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicate to the consuming application what actions it should take to remove the label information.

Given [contentInfo](../resources/contentinfo.md) as an input, which includes existing content metadata [key-value pairs](../resources/security-keyvaluepair.md), the API returns an [informationProtectionAction](../resources/security-informationprotectionaction.md) that contains some combination of one or more of the following: 

* [justifyAction](../resources/security-justifyaction.md)
* [metadataAction](../resources/security-metadataaction.md)
* [removeContentFooterAction](../resources/security-removecontentfooteraction.md)
* [removeContentHeaderAction](../resources/security-removecontentheaderaction.md)
* [removeProtectionAction](../resources/security-removeprotectionaction.md)
* [removeWatermarkAction](../resources/security-removewatermarkaction.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensitivitylabel_evaluateremoval" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensitivitylabel-evaluateremoval-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To evaluate removal as the signed-in user (delegated permission) or a specified user (application permission):

``` http
POST /users/{usersId}/security/informationProtection/sensitivityLabels/evaluateRemoval
POST /users/me/security/informationProtection/sensitivityLabels/evaluateRemoval
```

To evaluate removal as a service principal (application permission):

``` http
POST /users/security/informationProtection/sensitivityLabels/evaluateRemoval
```

## Request headers

| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required.                                                                                                                                                       |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter              | Type                                                                      | Description                                                                                                                         |
| :--------------------- | :------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------- |
| contentInfo            | [contentInfo](../resources/security-contentinfo.md)                       | Provides details about the content format, content state, and existing [metadata](../resources/security-keyvaluepair.md) as key-value pairs. |
| downgradeJustification | [downgradeJustification](../resources/security-downgradejustification.md) | Justification that must be provided by the user or application logic.                                                               |

## Response

If successful, this action returns a `200 OK` response code and an [informationProtectionAction](../resources/security-informationprotectionaction.md) collection in the response body. The [informationProtectionAction](../resources/security-informationprotectionaction.md) object will contain a [metadataAction](../resources/security-metadataaction.md) object that informs the application which metadata to remove.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.evaluateremoval",
  "sampleKeys": ["bob@contoso.com"]
}
-->
```http
POST https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabels/evaluateRemoval
Content-type: application/json
User-agent: ContosoLOBApp/1.0

{
    "contentInfo": {
        "@odata.type": "#microsoft.graph.security.contentInfo",
        "identifier": null,
        "state": "rest",
        "metadata": [
            {
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
                "value": "True"
            },
            {
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
                "value": "Standard"
            },
            {
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
                "value": "1/1/0001 12:00:00 AM"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
                "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
                "value": "LabelScopedToBob_Tests"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
                "value": "0"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
                "value": "00000000-0000-0000-0000-000000000000"
            }
        ]
    },
    "downgradeJustification": {
        "justificationMessage": "The information has been declassified.",
        "isDowngradeJustified": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sensitivitylabelthisevaluateremoval-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/sensitivitylabelthisevaluateremoval-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sensitivitylabelthisevaluateremoval-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sensitivitylabelthisevaluateremoval-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensitivitylabelthisevaluateremoval-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sensitivitylabelthisevaluateremoval-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sensitivitylabelthisevaluateremoval-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sensitivitylabelthisevaluateremoval-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "sensitivitylabelthis.evaluateremoval",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.informationProtectionAction",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.security.informationProtectionAction)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.security.metadataAction",
            "metadataToRemove": [
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
                "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId"
            ],
            "metadataToAdd": []
        }
    ]
}
```
<!--
{
  "type": "#page.annotation",
  "description": "sensitivityLabel: evaluateRemoval",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/users:
      /users/{var}/security/informationProtection/sensitivityLabels/evaluateRemoval
      Uri path requires navigating into unknown object hierarchy: missing property 'informationProtection' on 'security'. Possible issues:
  	 1) Doc bug where 'informationProtection' isn't defined on the resource.
  	 2) Doc bug where 'informationProtection' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'security' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
