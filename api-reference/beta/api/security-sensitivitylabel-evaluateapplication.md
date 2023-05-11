---
title: "sensitivityLabel: evaluateApplication"
description: "Evaluate which label to apply based on an existing content information and a desired content state."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# sensitivityLabel: evaluateApplication
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Compute the [sensitivity label](../resources/security-sensitivitylabel.md) that should be applied and return the set of actions that must be taken to correctly label the information. This API is useful when a label should be set manually or explicitly by a user or service, rather than automatically based on file contents.

Given [contentInfo](../resources/security-contentinfo.md), which includes existing content metadata [key-value pairs](../resources/security-keyvaluepair.md), and [labelingOptions](../resources/security-labelingoptions.md) as an input, the API returns an [informationProtectionAction](../resources/security-informationprotectionaction.md) object that contains one of more of the following: 

* [addContentFooterAction](../resources/security-addcontentfooteraction.md)
* [addContentHeaderAction](../resources/security-addcontentheaderaction.md)
* [addWatermarkAction](../resources/security-addwatermarkaction.md)
* [applyLabelAction](../resources/security-applylabelaction.md)
* [customAction](../resources/security-customaction.md)
* [justifyAction](../resources/security-justifyaction.md)
* [metadataAction](../resources/security-metadataaction.md)
* [protectAdhocAction](../resources/security-protectadhocaction.md)
* [protectByTemplateAction](../resources/security-protectbytemplateaction.md)
* [protectionDoNotForwardAction](../resources/security-protectdonotforwardaction.md)
* [recommendLabelAction](../resources/security-recommendlabelaction.md)
* [removeContentFooterAction](../resources/security-removecontentfooteraction.md)
* [removeContentHeaderAction](../resources/security-removecontentheaderaction.md)
* [removeProtectionAction](../resources/security-removeprotectionaction.md)
* [removeWatermarkAction](../resources/security-removewatermarkaction.md)

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

To evaluate as the signed-in user (delegated permission) or a specified user (application permission):

``` http
POST /users/{usersId}/security/informationProtection/sensitivityLabels/evaluateApplication
POST /me/security/informationProtection/sensitivityLabels/evaluateApplication
```

To evaluate as a service principal (application permission):

``` http
POST /security/informationProtection/sensitivityLabels/evaluateApplication
```

## Request headers
| Name          | Description                                                                                                                                                           |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required.                                                                                                                                             |
| Content-type  | application/json. Required.                                                                                                                                           |
| User-Agent    | Describes the name of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is `ApplicationName/Version`. Optional. |

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter       | Type                                                        | Description                                                                                                                      |
| :-------------- | :---------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------- |
| contentInfo     | [contentInfo](../resources/security-contentinfo.md)         | Provides details on the content format, content state, and existing [metadata](../resources/security-keyvaluepair.md) as key-value pairs. |
| labelingOptions | [labelingOptions](../resources/security-labelingoptions.md) | Provides details about the desired state of the content.                                                                         |

## Response

If successful, this action returns a `200 OK` response code and an [informationProtectionAction](../resources/security-informationprotectionaction.md) collection in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.evaluateapplication",
  "sampleKeys": ["bob@contoso.com"]
}
-->
``` http
POST https://graph.microsoft.com/beta/users/bob@contoso.com/security/informationProtection/sensitivityLabels/evaluateApplication
Content-Type: application/json
Content-length: 181
User-agent: ContosoLobApp/1.0

{
    "contentInfo": {
        "@odata.type": "#microsoft.graph.security.contentInfo",
        "format@odata.type": "#microsoft.graph.security.contentFormat",
        "contentFormat": "File",
        "format": "default",
        "identifier": null,
        "state@odata.type": "#microsoft.graph.security.contentState",
        "state": "rest",
        "metadata@odata.type": "#Collection(microsoft.graph.security.keyValuePair)",
        "metadata": [
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
                "value": "True"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
                "value": "Standard"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
                "value": "1/1/0001 12:00:00 AM"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
                "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
                "value": "LabelScopedToBob_Tests"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
                "value": "0"
            },
            {
                "@odata.type": "#microsoft.graph.security.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId",
                "value": "00000000-0000-0000-0000-000000000000"
            }
        ]
    },
    "labelingOptions": {
        "@odata.type": "#microsoft.graph.security.labelingOptions",
        "assignmentMethod@odata.type": "#microsoft.graph.security.assignmentMethod",
        "assignmentMethod": "standard",
        "labelId@odata.type": "#Guid",
        "labelId": "836ff34f-b604-4a62-a68c-d6be4205d569",
        "downgradeJustification": {
            "justificationMessage": "Justified",
            "isDowngradeJustified": true
        },
        "extendedProperties@odata.type": "#Collection(microsoft.graph.security.keyValuePair)",
        "extendedProperties": []
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sensitivitylabelthisevaluateapplication-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sensitivitylabelthisevaluateapplication-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensitivitylabelthisevaluateapplication-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sensitivitylabelthisevaluateapplication-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "name": "sensitivitylabelthis.evaluateapplication",
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
            "@odata.type": "#microsoft.graph.security.addContentHeaderAction",
            "uiElementName": "MSIPCM_v1_header",
            "text": "HIGHLY CONFIDENTIAL",
            "fontName": "Calibri",
            "fontSize": 12,
            "fontColor": "#000000",
            "alignment": "left",
            "margin": 5
        },
        {
            "@odata.type": "#microsoft.graph.security.addWatermarkAction",
            "uiElementName": "MSIPWM_v1_main",
            "layout": "diagonal",
            "text": "HIGHLY CONFIDENTIAL",
            "fontName": "Calibri",
            "fontSize": 72,
            "fontColor": "#000000"
        },
        {
            "@odata.type": "#microsoft.graph.security.addContentFooterAction",
            "uiElementName": "MSIPCM_v1_footer",
            "text": "HIGHLY CONFIDENTIAL",
            "fontName": "Calibri",
            "fontSize": 12,
            "fontColor": "#000000",
            "alignment": "left",
            "margin": 5
        },
        {
            "@odata.type": "#microsoft.graph.security.protectByTemplateAction",
            "templateId": "684d0d40-83d4-4ce6-a5e7-0efb9fffb2dc"
        },
        {
            "@odata.type": "#microsoft.graph.security.metadataAction",
            "metadataToRemove": [],
            "metadataToAdd": [
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled",
                    "value": "true"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate",
                    "value": "2022-03-04T22:48:13Z"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method",
                    "value": "Standard"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name",
                    "value": "FTEs_HC"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId",
                    "value": "29375103-6ce7-4dba-81ec-8e33884c6f0f"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId",
                    "value": "14368e92-2e6a-46c4-9a48-5117de375b66"
                },
                {
                    "name": "MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits",
                    "value": "15"
                }
            ]
        }
    ]
}
```
