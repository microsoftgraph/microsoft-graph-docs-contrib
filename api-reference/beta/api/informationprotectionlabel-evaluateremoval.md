---
title: "informationProtectionLabel: evaluateRemoval"
description: "Evaluate which label to remove and how to remove it based on existing content info."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "apiPageType"
---

# informationProtectionLabel: evaluateRemoval

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `evaluateRemoval` API informs the consuming application of specifically what actions it should take to remove the label.  

Given [contentInfo](../resources/contentinfo.md) as an input, which includes existing content metadata [key/value pairs](../resources/keyvaluepair.md), the API returns an [informationProtectionAction](../resources/informationProtectionAction.md) that contains some combination of one of more of the following: 

* [justifyAction](../resources/justifyAction.md)
* [metadataAction](../resources/metadataAction.md)
* [removeContentFooterAction](../resources/removeContentFooterAction.md)
* [removeContentHeaderAction](../resources/removeContentHeaderAction.md)
* [removeProtectionAction](../resources/removeProtectionAction.md)
* [removeWatermarkAction](../resources/removeWatermarkAction.md)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | InformationProtectionPolicy.Read            |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | InformationProtectionPolicy.Read.All        |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /informationprotection/core/labels/{id}/evaluateRemoval
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
| contentInfo     | [contentInfo](../resources/contentInfo.md)         | Provides details on the [content format](../resources/enums.md#contentFormat), [content state](../resources/enums.md#contentState), and existing [metadata](../resources/keyvaluepair.md) as key/value pairs.           |
|downgradeJustification|[downgradeJustification](../resources/downgradeJustification.md)| Justification that must be provided by the user or application logic. |


## Response

If successful, this method returns a `200 OK` response code and a new [informationProtectionAction](../resources/informationprotectionaction.md) collection object in the response body. The [informationProtectionAction object](../resources/informationprotectionaction.md) will contain a [metadataAction](../resources/metadataaction.md) object that informs 

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "informationprotectionlabel_evaluateremoval"
}-->

```http
POST https://graph.microsoft.com/beta/informationprotection/core/labels/{id}/evaluateRemoval
Content-type: application/json

{
    "contentInfo": {
        "@odata.type": "#microsoft.informationProtection.contentInfo",
        "format@odata.type": "#microsoft.informationProtection.contentFormat",
        "format": "file",
        "identifier": null,
        "state@odata.type": "#microsoft.informationProtection.contentState",
        "state": "rest",
        "metadata@odata.type": "#Collection(microsoft.informationProtection.keyValuePair)",
        "metadata": [
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
                "value": "True"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
                "value": "Standard"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
                "value": "1/1/0001 12:00:00 AM"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
                "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
                "value": "LabelScopedToBob_Tests"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
                "value": "0"
            },
            {
                "@odata.type": "#microsoft.informationProtection.keyValuePair",
                "name": "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId",
                "value": "00000000-0000-0000-0000-000000000000"
            }
        ]
    },
    "downgradeJustification": {
        "justificationMessage": "The information has be declassified.",
        "isDowngradeJustified": true
    }
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.informationProtectionAction",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.informationProtectionAction)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.metadataAction",
            "metadataToRemove": [
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits",
                "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId"
            ],
            "metadataToAdd": []
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionLabel: evaluateRemoval",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->