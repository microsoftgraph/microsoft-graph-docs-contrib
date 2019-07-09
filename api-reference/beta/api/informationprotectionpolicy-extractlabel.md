---
title: "informationProtectionPolicy: extractLabel"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "apiPageType"
---

# Extract a label from information

[!INCLUDE beta-disclaimer]

Using the metadata that exists on an already-labeled piece of information, resolve the metadata to a specific sensitivity label. The [contentState](..resources/contentstate.md) input is resolved to [informationProtectionContentLabel](../resources/informationprotectioncontentlabel.md).

>[!NOTE]
>InformationProtectionContentLabel represents a sensitivity label that has been applied to a piece of information. InformationProtectionLabel are the abstract labels that are part of the organizational labeling policy that can be applied to information.

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
POST /users/{id}/informationProtection/policy/extractLabel
POST /organization/{id}/informationProtection/policy/extractLabel
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|contentInfo| [contentInfo](../resources/contentInfo.md) | Provides details on the [content format](../resources/enums.md#contentFormat), [content state](../resources/enums.md#contentState), and existing [metadata](../resources/keyvaluepair.md) as key/value pairs.  |
|auditInfo|[auditInfo](../resources/auditInfo.md)|  Metadata pased in to the auditInfo parameter will surface in Azure Information Protection Analytics, surfacing details about the actions taken. |

## Response

If successful, this method returns `200, OK` response code and a new [informationProtectionContentLabel](../resources/informationprotectioncontentlabel.md) object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "informationprotectionpolicy_extractlabel"
}-->

```http
POST https://graph.microsoft.com/beta/users/{id}/informationProtection/policy/extractLabel
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
  "@odata.type": "microsoft.graph.informationProtectionContentLabel"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.informationProtectionContentLabel",
    "creationDateTime": "1970-01-01T00:00:00Z",
    "assignmentMethod": "standard",
    "label": {
        "id": "3a80e051-487c-40d4-b491-73ad25d997e6",
        "name": "General",
        "description": "Consult Contoso data labeling policy for more details.",
        "color": "",
        "sensitivity": 1,
        "tooltip": "Data classified as Contoso General.",
        "isActive": true
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "informationProtectionPolicy: extractLabel",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->