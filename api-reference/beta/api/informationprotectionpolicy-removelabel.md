---
title: "Remove a label"
description: "Remove a label."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "apiPageType"
---

# Remove a label

[!INCLUDE beta-disclaimer]

The `removeLabel` API isn't use to directly remove the label information from content. Rather, it informs the consuming application of specifically what actions it should take to effectively remove the label. 

Given [contentinfo](../resources/contentinfo.md) as an input, which includes existing content metadata [key/value pairs](../resources/keyvaluepair.md), the API returns some combination of one of more of the following: [customAction](../resources/customaction.md), [informationProtectionAction](../resources/informationProtectionAction.md), [justifyAction](./resources/justifyAction.md),[metadataAction](../resources/metadataAction.md), etc.

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
POST /users/{id}/informationProtection/policy/removeLabel
POST /organization/{id}/informationProtection/policy/removeLabel
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
| contentInfo     | [contentInfo](../resources/contentInfo.md)         | Provides details on the [content format](../resources/enums.md#contentFormat), [content state](../resources/enums.md#contentState), and existing [metadata](../resources/keyvaluepair.md) as key/value pairs.           |
|downgradeJustification|downgradeJustification| Justification reason that must be provided by the user or application logic. |
| auditInfo       | [auditInfo](../resources/auditInfo.md)             | Metadata pased in to the auditInfo parameter will surface in Azure Information Protection Analytics, surfacing details about the actions taken. |

## Response

If successful, this method returns `200, OK` response code and a new [informationProtectionAction](../resources/informationprotectionaction.md) collection object in the response body. [informationProtectionAction](../resources/informationprotectionaction.md) will contain a [metadataAction](../resources/metadataaction.md) that informs 

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "informationprotectionpolicy_removelabel"
}-->

```http
POST https://graph.microsoft.com/beta/users/{id}/informationProtection/policy/removeLabel
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
    },
    "auditInfo": {
        "@odata.type": "#microsoft.informationProtection.auditInfo"
    }
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

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
  "description": "informationProtectionPolicy: removeLabel",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->