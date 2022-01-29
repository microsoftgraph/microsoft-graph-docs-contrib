---
title: "sensitivityLabel: extractContentLabel"
description: "Retrieve contentLabel using metadata from a labeled object."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# sensitivityLabel: extractContentLabel

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Using the metadata that exists on an already-labeled piece of information, resolve the metadata to a specific sensitivity label. The [contentInfo](../resources/security-contentinfo.md) input is resolved to [informationProtectionContentLabel](../resources/security-contentlabel.md).

>[!NOTE]
>The **[contentLabel](../resources/security-contentlabel.md)** resource represents a sensitivity label that has been applied to a piece of information. [sensitivityLabels](../resources/security-sensitivitylabel.md) objects are the abstract labels that are part of the organizational labeling policy and can be applied to information.

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
POST /users/{usersId}/security/informationProtection/sensitivityLabels/extractContentLabel
```

## Request headers

| Name          | Description                                                                                                                                                                       |
| :------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required.                                                                                                                                                         |
| Content-type  | Content-type: application/json. Required.                                                                                                                                         |
| User-Agent    | Describes the name and version of the calling application. Details will surface in Azure Information Protection Analytics. Suggested format is ApplicationName/Version. Optional. |

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

| Parameter   | Type                                       | Description                                                                                                                         |
| :---------- | :----------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| contentInfo | [contentInfo](../resources/security-contentinfo.md) | Provides details about the content format, content state, and existing [metadata](../resources/keyvaluepair.md) as key/value pairs. |

## Response

If successful, this action returns a `200 OK` response code and a [contentLabel](../resources/security-contentlabel.md) in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "sensitivitylabelthis.extractcontentlabel"
}
-->
```http
POST https://graph.microsoft.com/beta/users/{usersId}/security/informationProtection/sensitivityLabels/extractContentLabel
Content-type: application/json
User-agent: ContosoLOBApp/1.0

{
    "contentInfo": {
        "@odata.type": "#microsoft.graph.security.contentInfo",
        "format@odata.type": "#microsoft.graph.security.contentFormat",
        "format": "default",
        "identifier": null,
        "state@odata.type": "#microsoft.graph.security.contentState",
        "state": "rest",
        "metadata@odata.type": "#Collection(microsoft.graph.keyValuePair)",
        "metadata": [
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled",
                "value": "True"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method",
                "value": "Standard"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate",
                "value": "1/1/0001 12:00:00 AM"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId",
                "value": "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name",
                "value": "Top Secret"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits",
                "value": "0"
            },
            {
                "@odata.type": "#microsoft.graph.keyValuePair",
                "name": "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId",
                "value": "00000000-0000-0000-0000-000000000000"
            }
        ]
    }
}
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentLabel"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.security.contentLabel",
    "creationDateTime": "1970-01-01T00:00:00Z",
    "assignmentMethod": "standard",
    "label": {
        "id": "722a5300-ac39-4c9a-88e3-f54c46676417",
        "name": "Top Secret",
        "description": "",
        "color": "#000000",
        "sensitivity": 13,
        "tooltip": "This information is top secret.",
        "isActive": true,
        "parent" : null
    }
}
```