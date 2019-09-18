---
title: "informationProtectionLabel: evaluateApplication"
description: "Evaluate which label to apply based on existing content info and desired content state."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "apiPageType"
---

# informationProtectionLabel: evaluateApplication

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To evaluate based on classification results, provide [contentInfo](../resources/labelingOptions.md), which includes existing content metadata [key/value pairs](../resources/keyvaluepair.md), and [classification results](../resources/classificationResult.md). The API returns an [informationProtectionAction](../resources/informationProtectionAction.md) that contains one of more of the following: 

Compute the [information protection label](../resources/informationProtectionLabel.md) that should be applied and return the set of actions that must be taken to correctly label the information. This API is useful when a label should be set manually or explicitly by a user or service, rather than automatically based on file contents. 

Given [contentInfo](../resources/labelingOptions.md), which includes existing content metadata [key/value pairs](../resources/keyvaluepair.md), and [labelingOptions](../resources/labelingOptions.md) as an input, the API returns an [informationProtectionAction](../resources/informationProtectionAction.md) that contains one of more of the following: 

* [addContentFooterAction](../resources/addContentFooterAction.md)
* [addContentHeaderAction](../resources/addContentHeaderAction.md)
* [addWatermarkAction](../resources/addWatermarkAction.md)
* [applyLabelAction](../resources/applyLabelAction.md)
* [customAction](../resources/customaction.md)
* [justifyAction](../resources/justifyAction.md)
* [metadataAction](../resources/metadataAction.md)
* [protectAdhocAction](../resources/protectAdhocAction.md)
* [protectByTemplateAction](../resources/protectByTemplateAction.md)
* [protectionDoNotForwardAction](../resources/protectDoNotForwardAction.md)
* [recommendedLabelAction](../resources/recommendedLabelAction.md)
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
POST /informationprotection/core/labels/{id}/evaluateApplication
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter       | Type                                               | Description |
| :-------------- | :------------------------------------------------- | :---------- |
| contentInfo     | [contentInfo](../resources/contentInfo.md)         | Provides details on the [content format](../resources/enums.md#contentFormat), [content state](../resources/enums.md#contentState), and existing [metadata](../resources/keyvaluepair.md) as key/value pairs.           |
| labelingOptions | [labelingOptions](../resources/labelingoptions.md) | Provides details about the desired state of the content.|

## Response

If successful, this method returns `200, OK` response code and a new [informationProtectionAction](../resources/informationprotectionaction.md) collection object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "informationprotectionlabel_evaluateapplication"
}-->

```http
POST https://graph.microsoft.com/beta/informationprotection/core/labels/{id}/evaluateApplication
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
                "value": "General"
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
    "labelingOptions": {
        "@odata.type": "#microsoft.informationProtection.labelingOptions",
        "assignmentMethod@odata.type": "#microsoft.informationProtection.assignmentMethod",
        "assignmentMethod": "standard",
        "labelId@odata.type": "#Guid",
        "labelId": "4662f9a3-dd50-4a20-b984-a7be82e0e79c",
        "downgradeJustification": null,
        "actionSource": "Manual",
        "extendedProperties@odata.type": "#Collection(microsoft.informationProtection.keyValuePair)",
        "extendedProperties": []
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
            "@odata.type": "#microsoft.graph.addContentFooterAction",
            "uiElementName": "MSIPCM_v1_footer",
            "text": "footerMarking",
            "fontName": "Calibri",
            "fontSize": 10,
            "fontColor": "#000000",
            "alignment": "left",
            "margin": 5
        },
        {
            "@odata.type": "#microsoft.graph.addContentHeaderAction",
            "uiElementName": "MSIPCM_v1_header",
            "text": "headerMarking",
            "fontName": "Calibri",
            "fontSize": 10,
            "fontColor": "#000000",
            "alignment": "left",
            "margin": 5
        },
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
            "metadataToAdd": [
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_Enabled",
                    "value": "true"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_SetDate",
                    "value": "2019-07-03T03:46:37Z"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_Method",
                    "value": "Standard"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_Name",
                    "value": "Confidential"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_SiteId",
                    "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_ActionId",
                    "value": "3a3d0732-aed7-4c70-8e12-000059976a07"
                },
                {
                    "name": "MSIP_Label_4662f9a3-dd50-4a20-b984-a7be82e0e79c_ContentBits",
                    "value": "3"
                }
            ]
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionLabel: evaluateApplication",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->